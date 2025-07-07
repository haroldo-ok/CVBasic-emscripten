'use strict';

(() => {
	
const scriptSrc = document.currentScript.src;
const url = new URL(scriptSrc);
const ideVersion = url.searchParams.get('ideVersion');
console.info('ideVersion:' , ideVersion);
	
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

const statusElement = document.getElementById('status');
const progressElement = document.getElementById('progress');
const spinnerElement = document.getElementById('spinner');

const Module = {
	preRun: [],		
	postRun: [],
	
	print: (function() {
		var element = document.getElementById('output');
		if (element) element.value = ''; // clear browser cache
		return function(text) {
			text = Array.prototype.slice.call(arguments).join(' ');
			// These replacements are necessary if you render to raw HTML
			//text = text.replace(/&/g, "&amp;");
			//text = text.replace(/</g, "&lt;");
			//text = text.replace(/>/g, "&gt;");
			//text = text.replace('\n', '<br>', 'g');
			console.log(text);
			if (element) {
				element.value += text + "\n";
				element.scrollTop = element.scrollHeight; // focus on bottom
			}
		};
	})(),
	
	printErr: function(text) {
		var element = document.getElementById('output');
		text = Array.prototype.slice.call(arguments).join(' ');
		if (0) { // XXX disabled for safety typeof dump == 'function') {
			dump(text + '\n'); // fast, straight to the real console
		} else {
			console.warn(text);
			if (element) {
				element.value += text + "\n";
				element.scrollTop = element.scrollHeight; // focus on bottom
			}
		}
	},
	
	setStatus: function(text) {
		if (!Module.setStatus.last) Module.setStatus.last = { time: Date.now(), text: '' };
		if (text === Module.setStatus.text) return;
		var m = text.match(/([^(]+)\((\d+(\.\d+)?)\/(\d+)\)/);
		var now = Date.now();
		if (m && now - Date.now() < 30) return; // if this is a progress update, skip it if too soon
		if (m) {
			text = m[1];
			progressElement.value = parseInt(m[2])*100;
			progressElement.max = parseInt(m[4])*100;
			progressElement.hidden = false;
			spinnerElement.hidden = false;
		} else {
			progressElement.value = null;
			progressElement.max = null;
			progressElement.hidden = true;
			if (!text) spinnerElement.hidden = true;
		}
		statusElement.innerHTML = text;
	},
	totalDependencies: 0,
	monitorRunDependencies: function(left) {
		this.totalDependencies = Math.max(this.totalDependencies, left);
		Module.setStatus(left ? 'Preparing... (' + (this.totalDependencies-left) + '/' + this.totalDependencies + ')' : 'All downloads complete.');
	},
	
	createToolConfiguration: function(moduleName, context) {
		const config = {
			preRun: [],		
			postRun: [],

			print: function(text) {
				Module.print(`${moduleName}:  ${text}`);
			},

			printErr: function(text) {
				Module.printErr(`${moduleName}:  ${text}`);
			},

			setStatus: function(text) {
				Module.setStatus(text);
			},
			totalDependencies: 0,
			monitorRunDependencies: function(left) {
				this.totalDependencies = Math.max(this.totalDependencies, left);
				console.log(left ? 'Preparing... (' + (this.totalDependencies-left) + '/' + this.totalDependencies + ')' : 'All downloads complete.');
			}
		};
		
		config.setStatus('Downloading...');
		context.onerror = function() {
			top.onerror();
		};
		
		return config;
	},
};
  
Module.setStatus('Downloading...');
window.onerror = function(err) {
	if (err == 'ResizeObserver loop completed with undelivered notifications.' ||
		err == 'Script error.') {
		console.warn('Exception thrown', err);
		return;
	}		

	Module.setStatus('Exception thrown, ' + err + ', see JavaScript console');
	spinnerElement.style.display = 'none';
	Module.setStatus = function(text) {
		if (text) Module.printErr('[post-exception status] ' + text);
	};
};	  

window.compiler = {
	cvbasic: createToolInvoker('cvbasic'),
	gasm80: createToolInvoker('gasm80'),
	
	status: Module,
};

window.Module = Module;

})();
