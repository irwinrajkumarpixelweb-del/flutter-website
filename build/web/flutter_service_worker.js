'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/assets/flutter.png": "abe34b0551ded954f6759cada7807e3e",
"assets/assets/web_icon.png": "8867144689b70d099377ee3c4ab1baa0",
"assets/assets/mission.svg": "0615384c64d7130a5ed7f9260077a82e",
"assets/assets/team-header-bg.png": "3671250da1a1fcda54b76772d2d5266b",
"assets/assets/seprator-line.svg": "231899b6817aebd6e88712e9caa69b63",
"assets/assets/ios_icon.png": "4b8039e8a442657c7b9b379322eb2793",
"assets/assets/logo.svg": "2a27655b50b46a036125408d32d2f1e6",
"assets/assets/telegram.png": "d940cd7b5e7b66510b59785177c6414f",
"assets/assets/darkwelcometwo.png": "3e982b36e0be4b436f756248f73fef59",
"assets/assets/all-players-profile-yelow-bg.png": "347614f5f62ba2f3e6f36578ef285872",
"assets/assets/vision.svg": "565fd131360761ce308ec5b426989749",
"assets/assets/stats-plyr-bg-2.png": "482626ca4fc435e4c3020b680c8b9734",
"assets/assets/github.png": "7aed3646cbea181a3da85620809e992c",
"assets/assets/javascript.png": "ab8e2beca091db2345ff66a5cc432985",
"assets/assets/create-a-league.svg": "12faee5e11ae78a7becd866377d425e5",
"assets/assets/darkwelcomebg.png": "0d00f9e71db57c7a919ed63bee85bffb",
"assets/assets/dart.png": "1a089616e2be1ac7c5188c00225772c8",
"assets/assets/bluw.png": "94d3f29825e65307d6da940b4821bfb1",
"assets/assets/linkedin.png": "e4d142586676a80b3927d899d3584148",
"assets/assets/css3.png": "b1bd0673d70ccee89e1457bd71554759",
"assets/assets/facebook.png": "fa74fe1619d75d68df1f0db7c654e39a",
"assets/assets/html5.png": "9d5b22bfe74ac513d5cd33563908ae71",
"assets/assets/dashboard_banner.png": "2e16dc3d55fdbf1e6537d887b78fd20a",
"assets/assets/stats-plyr-bg-3.png": "035c9344b379cd94643843a8eef65450",
"assets/assets/android_icon.png": "038ea15b40a395099451862327ebcfc1",
"assets/assets/hugo.png": "6c341d7823570ab705c940f1dea993ef",
"assets/assets/my_flutter_avatar.png": "ec12d7a495dcf6a4701e7334455efa8b",
"assets/assets/welcome_bg.png": "6ca2942d3efd7ff5cda1ab67facc002b",
"assets/assets/python.png": "e04382338533c6bb0dcfc7a48bf86502",
"assets/assets/videos/user2admin.mp4": "b82fa923f9c68d58f2bdb8802338b0f9",
"assets/assets/desktop_icon.png": "e0e90a080a776fd1da23f5a249b5ce3c",
"assets/assets/leagues-bg.png": "55a15039ca161d492401b8e0a01d42d1",
"assets/assets/darkwelcomeone.png": "0c44c22cb6f5536ca0b240e87b924d3b",
"assets/assets/docker.png": "722cafb6c71b44bba6292a603b2e198c",
"assets/assets/join-a-league.svg": "39a5c7839c2576bf892310278a99f8e9",
"assets/assets/my_flutter_avatar_ball.png": "e462258fe48b495e1439cc33d071d06b",
"assets/assets/darkhomebanner.png": "482b2b2b2e5b7881845be608e98c2467",
"assets/assets/glowbg.png": "f392647d589ce0320cf65ebfccc04a94",
"assets/assets/dark-bg.svg": "57d585509ab556362812365db2c72691",
"assets/assets/darkhomebanner.svg": "99912d91783c98c3017d1364a4aa0c01",
"assets/assets/splash_screen.png": "0cec2c4521f057b4297b9b8dc38b3255",
"assets/assets/stats-plyr-bg-1.png": "08850333266e07cb31e04301e4c5b6f1",
"assets/assets/projects/03.png": "9dd85f5710c01486dc5937733a22d9eb",
"assets/assets/projects/w03.jpeg": "81f24b685fd3f214e409fd29217c1235",
"assets/assets/projects/02.png": "cf8468132005ef5442c5857705e39c40",
"assets/assets/projects/05.png": "e2cc840dbaaf91e6acba1d9d44ae502f",
"assets/assets/projects/04.png": "8e2a233d5e7b9930407e3cccf54b6799",
"assets/assets/projects/1.png": "1f59be4af5fe374b4e3f5f6afdb3a24c",
"assets/assets/projects/w01.png": "b1256ae160f9170ab36ce78ee7a4dc2d",
"assets/assets/projects/06.png": "11a36375edc4b5ba6956bdeed286f733",
"assets/assets/projects/w02.png": "f3168876c62cbf02cb9ff94640383f96",
"assets/assets/instagram.png": "02c7721e097a6bb001d00fa61750bc81",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "b12d146225c86ad4e1113d0eb053bb03",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "abc047cec27fc58681f1038a5c48b7a6",
"assets/AssetManifest.json": "cb00ce6ba844fb692ebe2b91df5b0b27",
"assets/NOTICES": "8448fe4ba9d01f4b75e335627690c0cf",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "5f72d664707e4d711a1c0c240912cd50",
"assets/AssetManifest.bin": "f9d5cedc5ed7ca6e7d0c448558181ff0",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "9b818ca9511483c901bed1545384376c",
"flutter.js": "baab3b6ad5e74e3f0d43d96274f5fba9",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/skwasm.wasm": "f821008e63e8b0223476af8e7b5e7df7",
"canvaskit/canvaskit.wasm": "5070b29729807b44a517ff8ecdb9e31c",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.wasm": "49702d666184f2ea01f8ed6f3cbc2111",
"canvaskit/chromium/canvaskit.js.symbols": "56b8de673e91c6624dc16cd0f1f9a838",
"canvaskit/skwasm_heavy.js": "f5c1413d222bc68856296fc97ac9fec0",
"canvaskit/skwasm.js.symbols": "021707ff64ac37e2c81850adca34e06f",
"canvaskit/skwasm.js": "37fdb662bbaa915adeee8461576d69d7",
"canvaskit/canvaskit.js.symbols": "867d15540d09106a65fd18e4e83408b3",
"canvaskit/skwasm_heavy.wasm": "1e8e650beee57cf019dc8aef15f587c4",
"canvaskit/skwasm_heavy.js.symbols": "4c6915a46a80eab1f5d7d6d435c117ad",
"manifest.json": "e2b9103aaafaf8ed9f90576c9d9a1341",
"flutter_bootstrap.js": "4e1da7dcfcfb1edd0824f69aa1a83bed",
"index.html": "0ce53da4897dd18c847a596679278b14",
"/": "0ce53da4897dd18c847a596679278b14",
"main.dart.js": "80021c815ca9b847c2d3911832b9e97b"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
