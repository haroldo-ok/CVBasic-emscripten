'use strict';

(() => {
	
const createToolInvoker = moduleName => {
	const that = {
		pendingCallback: null,
		
		getIframeElement: () => {
			const iframeId = `${moduleName}-iframe`;
			const iframeElement = document.getElementById(iframeId);
			if (iframeElement) {
				return iframeElement;
			} else {
				const newIframeElement = document.createElement('iframe');
				newIframeElement.id = iframeId;
				newIframeElement.setAttribute('style', 'display: none');
				document.body.appendChild(newIframeElement);
				return newIframeElement;
			}
		},
		
		call: () => new Promise((resolve, reject) => {
			that.pendingCallback = resolve;
		
			// TODO: Fix this ugly hack, but taking into consideration that "cvbasic" doesn't clean variables between runs.
			const iframeElement = that.getIframeElement();
			iframeElement.src = `./${moduleName}-iframe.html`;
		}),
		
		handleIframeCallback: (iframeWindow) => {
			const onFileSystemReady = () => {
				if (iframeWindow.FS) {
					if (!compiler.cvbasic.pendingCallback) {
						throw new Error(`No callback for ${moduleName}.`);
					}
					compiler[moduleName].pendingCallback(iframeWindow);
				} else {
					if (onFileSystemReady.retries > 8) {
						throw new Error(`FS failed to load for ${moduleName}.`);
					}
					onFileSystemReady.retries++;
					window.setTimeout(onFileSystemReady, onFileSystemReady.retries * 100);
				}
			};
			window.setTimeout(onFileSystemReady, 50);			
		},
	};

	return that;
};

window.compiler = {
	cvbasic: createToolInvoker('cvbasic'),
	gasm80: createToolInvoker('gasm80'),	  
};

})();
