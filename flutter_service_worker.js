'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "3f3104ac15b8a9d1ccff46a071679b7f",
"assets/AssetManifest.bin.json": "0d2b16af2836857e378358060b873136",
"assets/assets/animation/Hello.json": "8d94b1abd0c4fad2ca3bf5982edd877b",
"assets/assets/animation/Vertical%252520Line.json": "e28d32b95fffd393f6718760cb3e11ba",
"assets/assets/app_icon/656114.webp": "5e0360822f7d93dcea800711780160a5",
"assets/assets/app_icon/basketball.png": "f5dae64873d5f5260dd05b31b0505e82",
"assets/assets/app_icon/BrieflyNewsIcon.png": "84487afd8e1963ded775c7700262c794",
"assets/assets/app_icon/coffe_shop.png": "3864fb7de10c4337ccf7274052ee763e",
"assets/assets/app_icon/icons.png": "f58e61ddeac76c8112bf1d47de2f4b71",
"assets/assets/app_icon/Periodic%252520Table.png": "0319eb0e689c87d6239baa10e9884db0",
"assets/assets/app_icon/SamaIcon.png": "3954101a74b06a8364d5c0aa70404fe5",
"assets/assets/app_icon/weather_icon.png": "38093640d17cae08c199f917cfddb7ec",
"assets/assets/basketball/1.jpg": "bd5987b7c520317b77278585151f2897",
"assets/assets/basketball/2.jpg": "91928cea1a9e0ae39c188ef8189e589f",
"assets/assets/Briefly_News_app/1.jpg": "73164894d514379a18e833c968a55173",
"assets/assets/Briefly_News_app/2.jpg": "79337665ecfaa81c9c8817cf32a22994",
"assets/assets/Briefly_News_app/3.jpg": "06b5b902747780fa51b60fec7b75a02e",
"assets/assets/Briefly_News_app/4.jpg": "5a8f9d1553396f66ef7511e3a4dad9a4",
"assets/assets/Briefly_News_app/5.jpg": "e3488bf019b111d7bba0c1f5e3255ad1",
"assets/assets/Briefly_News_app/6.jpg": "92b2e531d671b0e45b75e0eb4b868327",
"assets/assets/Briefly_News_app/7.jpg": "267248288eda9c2a9931b0fab83fe04e",
"assets/assets/Chat_app/1.jpg": "aeb34c7a3746218ceec71d94f2570033",
"assets/assets/Chat_app/2.jpg": "a52a5f5863f4869676336d0a504e021d",
"assets/assets/Chat_app/3.jpg": "3f24b256d31e4fd9873b55e8d9257aa6",
"assets/assets/Chat_app/4.jpg": "cc97bd50d5385d277ff50cb8ccce7dfd",
"assets/assets/icons/(gethup).png": "09f518c869fc2937c7b4fc0e0e5744f7",
"assets/assets/icons/behance.svg": "35ad2d47e647d0b168e7707b2984c6b5",
"assets/assets/icons/bloc.png": "977fbfba561065f9a68c4b47f9774531",
"assets/assets/icons/check.svg": "4220c82511cc1dfb40b8bba7d25c5f55",
"assets/assets/icons/dart.png": "1ab71d33e7ba834836197b4fa8726da0",
"assets/assets/icons/download.png": "0694fff8accc869f6c0496a964b04257",
"assets/assets/icons/download.svg": "628700a3031424d215a441fab2da1731",
"assets/assets/icons/dribble.svg": "d392567c5678d42472d2c7b766268101",
"assets/assets/icons/facebook-alt-svgrepo-com.svg": "61aadf1510e51694fb4bdc6832a15635",
"assets/assets/icons/firebase.png": "36170822afe4c716cfbdb96dac8cd10e",
"assets/assets/icons/flutter.png": "1105c9a994c1a6638daed558d5b631fd",
"assets/assets/icons/github.svg": "9226aa209923e38c0a6ddcb236e2bc68",
"assets/assets/icons/linkedin.svg": "5b2195ddf9e879047dd8a163c4194920",
"assets/assets/icons/twitter.svg": "a4a0163fef48a4247a305528c07bc4fa",
"assets/assets/images/Essam.png": "a08552d7215283ba3d4cdc7893ee99a3",
"assets/assets/Sama_app/1.jpg": "a4169a4ff3107eeafcb51108bb1b2d2c",
"assets/assets/Sama_app/2.jpg": "815ba9cbedc77dcceccb6214cac01e02",
"assets/assets/Sama_app/3.jpg": "c39ab716eab792131c357fe611775c0d",
"assets/assets/Sama_app/4.jpg": "c6e6b38f3e644c14e2094db074f05e31",
"assets/assets/Sama_app/5.jpg": "2b40ca3ab1243ef018775da668aa6c89",
"assets/assets/Sama_app/6.jpg": "977274c39bf1b066f9ceec3764177638",
"assets/assets/Sama_app/7.jpg": "56e0380587ff6f0f7ce8d0f0b18b1098",
"assets/assets/Shop_app/1.jpg": "38c4903c4d07e9a7b5a940879a8de8e9",
"assets/assets/Shop_app/2.jpg": "105bcefd627bd70d0f8d3319b09a4173",
"assets/assets/Shop_app/3.jpg": "5ad5a0d6aa7c77e4f8efab543d31d7e6",
"assets/assets/Shop_app/4.jpg": "d9dcebae02dbfcddac6fa2b5f926ed27",
"assets/assets/Shop_app/5.jpg": "f3e643f3453056d7b223af7ecc130cd5",
"assets/assets/Shop_app/6.jpg": "e2b5b6c44840a3c87fb398531558c6db",
"assets/assets/Shop_app/7.jpg": "36bd19ccaa56b4fafafde69944f8ca3d",
"assets/assets/Shop_app/8.jpg": "1cd04561a2b69e4f5a3e075141989949",
"assets/assets/Shop_app/ss.jfif": "902ee76b4ee1edb45fa517212b94cf3e",
"assets/assets/Weather_app/1.jpg": "1fe39bc5c3b240bbff48d85e781ecdf2",
"assets/assets/Weather_app/2.jpg": "f29f6f4e21392de5a60bd88ef96c58d5",
"assets/assets/Weather_app/3.jpg": "3a8a427fc5eb50217c862a422d018af5",
"assets/assets/Weather_app/4.jpg": "ac6f20215cc8e3be26b9b82454cd69d4",
"assets/assets/Weather_app/5.jpg": "922bbb36d29d0ef31a9839530a6e8a69",
"assets/assets/Weather_app/6.jpg": "cca21b872e30e63f6a02e4056bc24186",
"assets/FontManifest.json": "c75f7af11fb9919e042ad2ee704db319",
"assets/fonts/MaterialIcons-Regular.otf": "7afd80a8d68ff79c55977a4ebe4c9125",
"assets/NOTICES": "5f5aaaaded0bfd188e3e70c3a7df8c07",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Brands-Regular-400.otf": "785bcce4cf1860aedbffcc9e11ea21bf",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Regular-400.otf": "46be639d952abe98effde36da35e7701",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Solid-900.otf": "48b92e8451309fdcb73d294f0f6e9830",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"flutter_bootstrap.js": "809596a298b2588beb3cd6c839ea98de",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "ca7a6303bab51381c604931c5610c929",
"/": "ca7a6303bab51381c604931c5610c929",
"main.dart.js": "69061023289fe966f8edbc1d7919c5df",
"manifest.json": "3224cec2138b6baa63b739974f3e8bee",
"version.json": "188f28180c8924071c10e2d4cea49523"};
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
