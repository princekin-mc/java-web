//==========Mobile redirect Begin ========
if (/android/i.test(navigator.userAgent) || /iphone/i.test(navigator.userAgent)){
	window.location.href = window.location.href.replace(/^(.*)k1u.com(.*)$/, 'http://m.k1u.com$2');
}
//==========Mobile redirect End ========