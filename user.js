// Turn off Geolocation
user_pref("geo.enabled", false); 

// Tracks link clicking
user_pref("beacon.enabled", false);

// Disable prefetching (preloading of pages) and DNS prefetching, which lowers RAM usage
user_pref("network.prefetch-next", false); 
user_pref("network.dns.disablePrefetch", true);

/*** MIGHT WANT THESE OFF ***/

// Set a "do-not-track" header to tell sites not to track browsing habits
//user_pref("privacy.donottrackheader.enabled", true);

// Set Tracking Protection On
//user_pref("privacy.trackingprotection.enabled", true);

/*** MIGHT WANT THESE OFF ***/

//WebRTC 
user_pref("media.navigator.enabled", false);
user_pref("media.peerconnection.enabled", false);

// Show Punycode
user_pref("network.IDN_show_punycode", true);

//effectively rel=noopener on every `<a>` tag
user_pref("dom.targetBlankNoOpener.enabled", true);

// Dotted outline box on links/selections -- 0 disables
//user_pref("browser.display.focus_ring_width", 0);

// Smooth Scroll settings
user_pref("general.smoothScroll.currentVelocityWeighting", "0");
user_pref("general.smoothScroll.mouseWheel.durationMaxMS", 250);
user_pref("general.smoothScroll.stopDecelerationWeighting", "0.82");
user_pref("general.smoothScroll.other", false);
// Default this on Linux...?
user_pref("mousewheel.min_line_scroll_amount", 20);

// Do NOT start with Windows -- Windows Only
//user_pref("toolkit.winRegisterApplicationRestart", false);

// Might be needed?
//user_pref("browser.download.autohideButton", false);

// I mean...maybe? We'll see...
// Media Source Extensions for glorious YouTube
/*user_pref("media.mediasource.enabled", true);
user_pref("media.mediasource.webm.enabled", true);
user_pref("media.fragmented-mp4.exposed", true);
user_pref("media.fragmented-mp4.ffmpeg.enabled", true);
user_pref("media.fragmented-mp4.gmp.enabled", true);
*/

// Set proper spellchecker dictionary
// - Doesn't work properly, must delete dictionaries in /usr/share/hunspell
//user_pref("spellchecker.dictionary", "en-US");

