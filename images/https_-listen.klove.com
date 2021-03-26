<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Listen to Positive &amp; Encouraging K-LOVE</title>

    
    <link rel="apple-touch-icon" sizes="180x180" href="/images/klove/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/images/klove/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/images/klove/favicons/favicon-16x16.png">


    
    <meta name="Description" content="Encouraging music when you need it most. Listen to Positive &amp; Encouraging music on K-LOVE!">
    <meta property="og:title" content="Listen to Positive &amp; Encouraging K-LOVE">
    <meta property="og:description" content="Encouraging music when you need it most. Listen to Positive &amp; Encouraging music on K-LOVE!">
    <meta property="og:image" content="http://listen.klove.com/images/klove/KL-Facebook-OG-Image.jpg">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    
    
        <link rel="stylesheet" href="/css/klove.min.css?v=uU3Zv6zAuX5gM2i8OP6HvEWLffomeBHCPqooTiovjnk" />
    
    


    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Days+One" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    

    <script src="/js/Jwplayer/8.13.4/jwplayer.js"></script>

    <script type="text/javascript">
        var EMF = EMF || {};

        EMF.Variables = {
            Network: "klove",
            BrandName: "K-LOVE",
            BrandId: "1",
            OperatingSystem: "",
            AppBannerAppName: "K-LOVE Radio App:",
            AppBannerAppIcon : "/images/kl-appicon-logo.png",
            AppBanneriOSMessage : "Get the app in the Apple App Store.",
            AppBanneriOSStoreLink : "https://apps.apple.com/us/app/k-love/id589478573",
            AppBannerAndroidMessage : "Get the app in the Google Play Store.",
            AppBannerAndroidStoreLink: "https://play.google.com/store/apps/details?id=com.emf.klove",
            StreamSrc: "",
            StreamType: "",
            SongMetaDelay: "120000",
            AutoPlay: false,
            SelectedChannel: "Live",
            SelectedChannelId: "5",
            SongServiceURL: "https://api.corpemf.com/music/v1/LastPlayed",
            SongServiceKey: "180b940665a34cccbdffef7ea4520a35",
            LoadScripts: true
        };

        //Test the browser to see if it will let Tealium and Youbora load. Is there and Ad Blocker. Tested with the Brave Browser built in Ad Blocker
        var sc = document.createElement("script");
        sc.setAttribute("src", "https://tags.tiqcdn.com/utag/emf/kl/prod/utag.js");
        sc.setAttribute("id", "script-tester");
        sc.setAttribute("onerror", " blocked()");
        sc.setAttribute("type", "text/javascript");
        sc.setAttribute("onload", " notBlocked()");
        document.head.appendChild(sc);
        function blocked() {
            console.log('Ad Blocker exists');
            EMF.Variables.LoadScripts = false;
        }
        function notBlocked() {
            console.log('No Ad blocker');
            EMF.Variables.LoadScripts = true;
        }
    </script>

    <script src="https://smartplugin.youbora.com/v6/js/adapters/jwplayer/6.7.4/sp.min.js"></script>

    <script type="text/javascript">
        function setYouboraOptions() {
            if (EMF.Variables.LoadScripts) {
                //Youbora stat init
                window.plugin = new youbora.Plugin({ accountCode: 'klove' });

                //Youbora Attach adapter
                plugin.setAdapter(new youbora.adapters.JWPlayer(EMF.Player.jwPlayer));
                plugin.setOptions({
                    'username': utag.data.tealium_visitor_id,
                    'content.transactionCode': utag.data.tealium_session_id,
                    'content.title': 'Say I Won&#x27;t - MercyMe',
                    'content.isLive': true,
                    'content.channel': 'K-LOVE LIVE',
                    'content.id': '188329',
                    'content.language': 'eng',
                    'playerVersion': '4.1.0',
                    'player': 'EMF HTML5 Player',
                    'userType': 'unregistered',
                    'httpSecure': true,
                    'background.enabled': false
                });
            }
        }
    </script>

</head>
<body>

    
    <script type="text/javascript">

        var utag_data = {
            tealium_event: 'player',
            page_section: 'listen',
            page_category: 'player',
            page_subcategory: '',
            content_category: 'streaming',
            content_subcategory: 'klove',
            page_name: 'K-LOVE live player'
        };

        if (EMF.Variables.LoadScripts) {
            (function (a, b, c, d) {
                $('#script-tester').remove();

                a = '//tags.tiqcdn.com/utag/emf/kl/prod/utag.js';
                b = document; c = 'script'; d = b.createElement(c); d.src = a; d.type = 'text/java' + c; d.async = true;
                a = b.getElementsByTagName(c)[0]; a.parentNode.insertBefore(d, a);

                // uses onload, for modern browsers
                d.onload = function () {
                    if (!d.onloadDone) {
                        d.onloadDone = true;
                        if (EMF.Variables.AutoPlay) {
                            $(function () {
                                EMF.Player.playStop();
                            });
                        }
                    }
                };

                // uses onreadystatechange, for IE9
                d.onreadystatechange = function () {
                    if (("loaded" === d.readyState || "complete" === d.readyState) && !d.onloadDone) {
                        d.onloadDone = true;
                        setYouboraOptions();
                        if (EMF.Variables.AutoPlay) {
                            $(function () {
                                EMF.Player.playStop();
                            });
                        }
                    }
                }
            })();
        }
    </script>


    







<!-- App Banner -->
<div id="appBanner" class="alert alert-light alert-dismissible mb-0 fade show" role="alert">
    <div class="container p-0">
        <div class="row d-flex align-items-center">
            <div id="appIconWrapper" class="col-3 col-md-2 col-lg-1"><img id="appIcon" class="img-fluid" /></div>
            <div class="col-9 col-md-10 col-lg-11">
                <h5 class="mb-0"><strong id="appName">Radio App:</strong> <span id="appOsMesssage">Get the app.</span> <a id="appStoreLink" class="font-weight-bold text-primary" target="_blank">Download Now</a></h5>
            </div>
        </div>
    </div>
    <button type="button" class="close close-app-banner" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<!-- App Banner End-->


<!-- MASTHEAD -->
<section class="masthead">
    <!-- NAVBAR -->
    <div class="container">
        <div class="row d-flex align-items-center justify-content-between">
            <div class="col-6 col-lg-4">
                <a href="https://www.klove.com" class="logo-link" target="_blank"><img src="/images/logo-container.png" alt="network logo" class="brand-logo"></a>
            </div>
            <div class="col col-lg-4 d-none d-lg-block">
                <div class="text-center">
                    <div class="dropdown">
                        <button class="btn btn-glass menuNormal" type="button" id="dropdownChannelsButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-angle-down mr-2" alt="change channels"></i>CHANNELS</button>
                        <div class="dropdown-menu w-100 shadow text-center" aria-labelledby="dropdownChannelsButton">
                                <a data-tealium_event="player"
                                   data-event_action="click"
                                   data-event_category="player (web)"
                                   data-event_label="Live"
                                   data-event_location="header"
                                   class="dropdown-item"
                                   href="Live">
                                    Live
                                </a>
                                <a data-tealium_event="player"
                                   data-event_action="click"
                                   data-event_category="player (web)"
                                   data-event_label="Christmas"
                                   data-event_location="header"
                                   class="dropdown-item"
                                   href="Christmas">
                                    Christmas
                                </a>
                                <a data-tealium_event="player"
                                   data-event_action="click"
                                   data-event_category="player (web)"
                                   data-event_label="90s"
                                   data-event_location="header"
                                   class="dropdown-item"
                                   href="90s">
                                    90s
                                </a>
                                <a data-tealium_event="player"
                                   data-event_action="click"
                                   data-event_category="player (web)"
                                   data-event_label="2000s"
                                   data-event_location="header"
                                   class="dropdown-item"
                                   href="2000s">
                                    2000s
                                </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-6 col-lg-4">
                <div class="text-right">
                    <a href="https://donor.klove.com/" class="btn btn-glass" target="_blank">Donate</a>
                </div>
            </div>


        </div>
    </div>

    <div class="pb-lg-5">
        <div class="container py-3 py-lg-5">
            <div class="row justify-content-center">

                <!-- Channels Mobile -->
                <div class="col-12 d-lg-none">
                    <div class="text-center">
                        <div class="dropdown mb-4">
                            <button class="btn btn-block btn-glass menuNormal" type="button" id="dropdownChannelsButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" alt="change channels"><i class="fas fa-angle-down mr-2"></i>CHANNELS</button>
                            <div class="dropdown-menu w-100 shadow text-center" aria-labelledby="dropdownChannelsButton">
                                    <a data-tealium_event="player"
                                       data-event_action="click"
                                       data-event_category="player (web)"
                                       data-event_label="Live"
                                       data-event_location="header"
                                       class="dropdown-item"
                                       href="Live">
                                        Live
                                    </a>
                                    <a data-tealium_event="player"
                                       data-event_action="click"
                                       data-event_category="player (web)"
                                       data-event_label="Christmas"
                                       data-event_location="header"
                                       class="dropdown-item"
                                       href="Christmas">
                                        Christmas
                                    </a>
                                    <a data-tealium_event="player"
                                       data-event_action="click"
                                       data-event_category="player (web)"
                                       data-event_label="90s"
                                       data-event_location="header"
                                       class="dropdown-item"
                                       href="90s">
                                        90s
                                    </a>
                                    <a data-tealium_event="player"
                                       data-event_action="click"
                                       data-event_category="player (web)"
                                       data-event_label="2000s"
                                       data-event_location="header"
                                       class="dropdown-item"
                                       href="2000s">
                                        2000s
                                    </a>
                            </div>
                        </div>
                    </div>
                </div>
                    <div id="nowPlaying" class="col-5 col-lg-4">
                        <div id="now-playing-image-wrapper" class="shadow">
                            <img id="nowPlaying-image" class="img-fluid w-100 shadow album-art" src="https://emfmediaresize.azureedge.net/?url=https://cdn.corpemf.com/music/18636.jpg&width=890" onerror="this.style.display='none'">
                        </div>

                        <div class="row justify-content-center d-none d-lg-inline">
                            <div class="col-12 text-center">
                                <a id="nowPlaying-songLink" href="https://www.klove.com/music/artists/mercyme/say-i-wont" class="btn text-white ml-2 op-50" data-toggle="tooltip" data-placement="bottom" data-click_label="Song" data-click_category="link" title="Song" target="_blank">
                                    <i class="fas fa-music"></i>
                                </a>
                                <a id="nowPlaying-artistLink" href="https://www.klove.com/music/artists/mercyme" class="btn text-white ml-2 op-50" data-toggle="tooltip" data-placement="bottom" data-click_label="Artist Info" data-click_category="link" title="Artist Info" target="_blank">
                                    <i class="fas fa-user"></i>
                                </a>
                                <a id="nowPlaying-artistFacebook" href="https://www.facebook.com/mercyme" class="btn text-white ml-2 op-50" data-toggle="tooltip" data-placement="bottom" data-click_label="Artist Facebook" data-click_category="link" title="Artist Facebook" target="_blank">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a id="nowPlaying-artistTwitter" href="https://twitter.com/mercyme" class="btn text-white ml-2 op-50" data-toggle="tooltip" data-placement="bottom" data-click_label="Artist Twitter" data-click_category="link" title="Artist Twitter" target="_blank">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-7 col-lg-8 d-flex align-items-center">
                        <div class="pl-lg-5 mt-lg-n5 ml-n2">
                            <p class="text-white op-50 mb-2 text-space now-play">LIVE</p>

                            <h2 id="nowPlaying-title" data-songId="188329" data-automationId="9fb9549b-a2e7-4725-a087-a6421447352d" class="display-4 text-white player-text">Say I Won&#x27;t</h2>

                            <h2 id="nowPlaying-artist" data-artistId="178851" class="text-white player-text">MercyMe</h2>

                            <button data-tealium_event="player" data-event_action="play" data-event_category="Player (web)" data-event_label="K-LOVE Web Player" data-event_location="header" class="audio-control-button btn btn-light btn-play font-weight-bold shadow d-none d-lg-inline mb-4 px-5 mt-5">
                                <i class="fas fa-play mr-3 text-third"></i>
                                PLAY
                            </button>
                            <audio id="audio-player" preload="none"></audio>
                            <br />
                            <div id="volumeControl" class="d-none d-lg-block">
                                <i class="icon-vol-loud"></i>
                                <div id="volume"></div>
                            </div>

                            <h5 class="text-white d-none d-lg-block locationText">Seattle, WA 104.5 FM</h5>
                        </div>
                    </div>

                <div class="col-12 d-lg-none">
                    <button data-tealium_event="player" data-event_action="play" data-event_category="Player (web)" data-event_label="K-LOVE Web Player" data-event_location="header" class="audio-control-button btn btn-block btn-light font-weight-bold shadow mt-4 py-3">
                        <i class="fas fa-play mr-3 text-third"></i>
                        PLAY
                    </button>
                </div>
                <div class="col-4 d-lg-none mobile-controls">
                    <a id="nowPlaying-songLink-mobile" href="https://www.klove.com/music/artists/mercyme/say-i-wont" data-click_category="link" data-click_label="Song" class="btn btn-block mt-2 text-white op-50" target="_blank">
                        <i class="fas fa-music mr-sm-3"></i>
                        Song
                    </a>

                </div>
                <div class="col-4 d-lg-none mobile-controls">

                    <a id="nowPlaying-artistLink-mobile" href="https://www.klove.com/music/artists/mercyme" data-click_category="link" data-click_label="Artist" class="btn btn-block mt-2 text-white op-50" target="_blank">
                        <i class="fas fa-user mr-sm-3"></i>
                        Artist
                    </a>

                </div>

                <div class="col-4 d-lg-none mobile-controls">

                    <div id="social-dropdown-mobile" class="dropdown">
                        <button data-click_category="link" data-click_label="Sharee" class="btn btn-block mt-2 text-white op-50" type="button" id="dropdownShareButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-share-square mr-sm-3"></i>
                            Share
                        </button>
                        <div class="dropdown-menu dropdown-menu-right shadow" aria-labelledby="dropdownShareButton">

                            <a id="nowPlaying-artistFacebook-dropdown-mobile" class="dropdown-item" href="https://www.facebook.com/mercyme" target="_blank"><i class="fab fa-facebook-square mr-3"></i>Facebook</a>

                            <a id="nowPlaying-artistTwitter-dropdown-mobile" class="dropdown-item" href="https://twitter.com/mercyme" target="_blank"><i class="fab fa-twitter-square mr-3"></i>Twitter</a>

                        </div>
                    </div>
                </div>

                <div class="col-12 d-lg-none">
                    <p class="text-white text-center mb-0 font-weight-bold border-top-op pt-4 locationText">Seattle, WA 104.5 FM</p>
                </div>
            </div>
        </div>
    </div>
</section>



<!-- LAST PLAYED -->
<section class="last-played">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-lg-12">
                <p class="section-title">LAST PLAYED</p>
            </div>
<div class="col-12 col-lg-3">
                        <a href="https://www.klove.com/music/artists/jeremy-camp/my-god" target="_blank">
                            <div class="bg-light my-2 diffuse song-card">
                                <div class="row no-gutters d-flex align-items-center">
                                    <div class="col-3 col-lg-4">
                                        <div class="song-img-wrapper">
                                                <img class="img-fluid album-art" src="https://emfmediaresize.azureedge.net/?url=https://cdn.corpemf.com/music/16475.jpg&width=170" onerror="this.style.display='none'">
                                        </div>
                                    </div>
                                    <div class="col-9 col-lg-8">
                                        <div class="px-3 song-text mb-1">
                                            <span class="song-title font-weight-bold text-dark">My God</span>
                                        </div>
                                        <div class="px-3 song-text">
                                            <span class="song-artist text-dark">Jeremy Camp</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
<div class="col-12 col-lg-3">
                        <a href="https://www.klove.com/music/artists/jordan-feliz/next-to-me" target="_blank">
                            <div class="bg-light my-2 diffuse song-card">
                                <div class="row no-gutters d-flex align-items-center">
                                    <div class="col-3 col-lg-4">
                                        <div class="song-img-wrapper">
                                                <img class="img-fluid album-art" src="https://emfmediaresize.azureedge.net/?url=https://cdn.corpemf.com/music/18635.jpg&width=170" onerror="this.style.display='none'">
                                        </div>
                                    </div>
                                    <div class="col-9 col-lg-8">
                                        <div class="px-3 song-text mb-1">
                                            <span class="song-title font-weight-bold text-dark">Next to Me</span>
                                        </div>
                                        <div class="px-3 song-text">
                                            <span class="song-artist text-dark">Jordan Feliz</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
<div class="col-12 col-lg-3">
                        <a href="https://www.klove.com/music/artists/finding-favour/cast-my-cares" target="_blank">
                            <div class="bg-light my-2 diffuse song-card">
                                <div class="row no-gutters d-flex align-items-center">
                                    <div class="col-3 col-lg-4">
                                        <div class="song-img-wrapper">
                                                <img class="img-fluid album-art" src="https://emfmediaresize.azureedge.net/?url=https://cdn.corpemf.com/music/12624.jpg&width=170" onerror="this.style.display='none'">
                                        </div>
                                    </div>
                                    <div class="col-9 col-lg-8">
                                        <div class="px-3 song-text mb-1">
                                            <span class="song-title font-weight-bold text-dark">Cast My Cares</span>
                                        </div>
                                        <div class="px-3 song-text">
                                            <span class="song-artist text-dark">Finding Favour</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
<div class="col-12 col-lg-3">
                        <a href="https://www.klove.com/music/artists/tobymac/help-is-on-the-way-maybe-midnight" target="_blank">
                            <div class="bg-light my-2 diffuse song-card">
                                <div class="row no-gutters d-flex align-items-center">
                                    <div class="col-3 col-lg-4">
                                        <div class="song-img-wrapper">
                                                <img class="img-fluid album-art" src="https://emfmediaresize.azureedge.net/?url=https://cdn.corpemf.com/music/19460.jpg&width=170" onerror="this.style.display='none'">
                                        </div>
                                    </div>
                                    <div class="col-9 col-lg-8">
                                        <div class="px-3 song-text mb-1">
                                            <span class="song-title font-weight-bold text-dark">Help Is On The Way (Maybe Midnight)</span>
                                        </div>
                                        <div class="px-3 song-text">
                                            <span class="song-artist text-dark">TobyMac</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
        </div>
    </div>
</section>

<!-- FOOTER -->
<div class="footer full-width" style="margin-top:100px;">

	<section id="signup-section" class="py-4" style="background-color: #ebedf0;">
		<form id="signup-form" action="/Home/GeneralSignup" method="post">
			<div class="container">
				<div class="row justify-content-center d-flex align-items-center">
					<div class="col-11 col-lg-4 my-2">
						<h4 class="font-weight-bold text-center">Do you love K-LOVE? <br>Sign up
							for music updates!</h4>
					</div>
					<div class="col-11 col-lg-6 my-2">
						<div class="input-group input-group-lg">
							<input id="signup-emailAddress" name="emailAddress" type="text"
								placeholder="Your email address" class="form-control">
						</div>
					</div>
					<div class="col-11 col-lg-2 my-2">
						<button id="signupBtn" type="submit" class="btn btn-primary btn-block">Sign Up</button>
					</div>
					<input id="signup-formUrl" type="hidden" name="formUrl"
						value="https://go.pardot.com/l/763193/2020-07-13/28w7zx" />
				</div>
			</div>
		<input name="__RequestVerificationToken" type="hidden" value="CfDJ8MfXwNQe7qhKpqBJEh2rL4HK666ILnbL6osVwoSzn5pQmFw6PnQlAIu5FTKu5Tx81TIFlOu0HsNyCSjWUiTCQYtQSRUnoQWfAiT9vPrCBxfoHl38asG_gkCmj7qxHviSEXeR4mA0USJzPU4YYjTRbxw" /></form>
	</section>

	<div class="container">
		<div class="row justify-content-center d-flex align-items-center">
			<div class="col-12 col-lg-2">
				<div class="my-4 text-center">
					<a href="https://www.klove.com" class="logo-link" target="_blank"><span
							class="icon-logo-color"></span></a>
				</div>
			</div>
			<div class="col-12 col-lg-10">
				<div class="text-center">
					<ul class="list-inline my-4 float-right">
						<li class="list-inline-item">
							<a href="https://www.facebook.com/kloveradio/" class="btn btn-light my-1" target="_blank"><i
									class="fab fa-facebook-f text-facebook mr-2"></i>Facebook</a>
						</li>
						<li class="list-inline-item">
							<a href="https://twitter.com/KLOVERadio" class="btn btn-light my-1" target="_blank"><i
									class="fab fa-twitter text-twitter mr-2"></i>Twitter</a>
						</li>
						<li class="list-inline-item">
							<a href="https://www.instagram.com/kloveradio/" class="btn btn-light my-1" target="_blank"><i
									class="fab fa-instagram text-instagram mr-2"></i>Instagram</a>
						</li>
						<li class="list-inline-item">
							<a href="https://www.youtube.com/c/klove" class="btn btn-light my-1" target="_blank"><i
									class="fab fa-youtube text-youtube mr-2"></i>YouTube</a>
						</li>
						<li class="list-inline-item">
							<a href="https://www.pinterest.com/kloveradio/" class="btn btn-light my-1" target="_blank"><i
									class="fab fa-pinterest text-pinterest mr-2"></i>Pinterest</a>
						</li>
						<li class="list-inline-item">
							<a href="https://www.linkedin.com/company/kloveair1" class="btn btn-light my-1" target="_blank"><i
									class="fab fa-linkedin text-linkedin mr-2"></i>LinkedIn</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col my-4">
				<small>
					<p class="text-center text-muted mb-1">K-LOVE is a 501(c)3 and all donations
						are tax deductible. Employer ID Number: 94-2816342</p>
					<p class="text-center text-muted mb-1">
						&#169; 2021 Educational Media Foundation, All rights reserved.
					</p>
					<p class="text-center">
						<a class="text-muted" href="https://www.klove.com/policies/privacy-policy" target="_blank">Privacy Policy</a> |
						<a class="text-muted" href="https://www.klove.com/policies/donor-privacy-policy" target="_blank">Donor Privacy Policy</a> |
						<a class="text-muted" href="https://www.klove.com/policies/terms-of-use" target="_blank">Terms of Use</a> |
                        <a class="text-muted" href="https://submit-irm.trustarc.com/services/validation/eb6dd323-c1d2-4565-bd52-1aa8f0c66ab1" target="_blank">Exercise Your Privacy Rights</a> |
                        <a class="text-muted" href="javascript:utag.gdpr.showDoNotSellPrompt()">Do Not Sell My Personal Information</a>
					</p>
				</small>
			</div>
		</div>
	</div>
</div>

<input name="__RequestVerificationToken" type="hidden" value="CfDJ8MfXwNQe7qhKpqBJEh2rL4HK666ILnbL6osVwoSzn5pQmFw6PnQlAIu5FTKu5Tx81TIFlOu0HsNyCSjWUiTCQYtQSRUnoQWfAiT9vPrCBxfoHl38asG_gkCmj7qxHviSEXeR4mA0USJzPU4YYjTRbxw" />
<!-- FOOTER END -->

<div style="display:none;">
    <div id="jwPlayerTag"></div>
</div>



    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
   
    <script src="/lib/signalr/signalr.min.js"></script>

    

    <script>
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>

    
        <script src="/js/emf-player.min.js?v=EWwP1U9260jS6tFBnS0vYlEYl7E_UKlyt06U3p85Pgo"></script>
    
    

    <script type="text/javascript">
        EMF.SignalR.urlBase = "https://api.corpemf.com/music-player/v1/nowplaying/";
        EMF.SignalR.selectedChannel = "KloveLive";
        EMF.SignalR.init();
    </script>



</body>
</html>
