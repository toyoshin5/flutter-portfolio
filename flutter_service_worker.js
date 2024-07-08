'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-512.png": "996cf112dc017d03fe05685d53387e8c",
"icons/Icon-maskable-192.png": "9ab4f48567d4b428152227d42a9d995d",
"icons/Icon-192.png": "60ac7ac8e9898668ba9f142110fe6178",
"icons/Icon-maskable-512.png": "7f8bba424382b0e6491c4ff377c5ed2f",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"flutter_bootstrap.js": "c02cbc6ce7590b62a77e86a542feb247",
"version.json": "c420e205d8eac4ccea99913b4a50bfa7",
"favicon.png": "3764ce2959e06b1e2977dda51b886863",
"main.dart.js": "3ff9eac1a27133782702f2a72f24f84c",
"assets/NOTICES": "0d55007b7d218dc1ceb38b13fc4229c7",
"assets/AssetManifest.bin": "b9edd19b6d438dc3f20b05dc3fa17a5b",
"assets/assets/font/hiragino-w4.ttc": "625d1f8975d1111b8b877506dcfb78de",
"assets/assets/font/SF-Pro-Text-Bold.otf": "a7c3834e5ff73fd42009cc5bc3ec4021",
"assets/assets/font/SF-Pro-Text-Regular.otf": "5ef71035da64ca21ba6a00d8ede83e4a",
"assets/assets/font/hiragino-w6.ttc": "1d3cac76e2b1a0222167d06f47e8aa43",
"assets/assets/font/SF-Pro-Rounded-Regular.otf": "72b60a55e38301cfa766499e9b643b78",
"assets/assets/font/SF-Mono-Bold.otf": "075c68cd6b34d3cc34eb5b0a0baa0991",
"assets/assets/images/proxy.png": "4601a2ffc5f5a0abc8a442a8b4a791a2",
"assets/assets/images/rakupe.png": "7667e9fc2f418cab7027f217cd8f2cc9",
"assets/assets/images/umap.jpeg": "a235fa0bf1d03cba908c49413a6d97ae",
"assets/assets/images/photocurrency.jpeg": "a17944abd6f8428bfa53e540cee82445",
"assets/assets/images/twinotes.jpeg": "f8073644706de056a1bc46d98389cb20",
"assets/assets/images/armeasure.png": "df4f2499c2351f42c0e880c0ee86fcfc",
"assets/assets/images/cook/IMG_1654.jpg": "737f55cb9c2a25785dfa18184566778e",
"assets/assets/images/cook/IMG_1811.jpg": "cdccecff469491f1a812ce47a817a09e",
"assets/assets/images/cook/IMG_1559.jpg": "269064a9acdb8d504450b6bf79bc7179",
"assets/assets/images/cook/IMG_1745.jpg": "b2cd14e06acdcede1e90ab44c6aba42d",
"assets/assets/images/cook/IMG_1417.jpg": "e872b8df3712a09cafbaff3ac4ad72d6",
"assets/assets/images/cook/IMG_1612.jpg": "48844b1f9f9b8f6d3b35dd3b22603c14",
"assets/assets/images/cook/IMG_2113.jpg": "91218a9d2149506c5a9d941a930be6fe",
"assets/assets/images/cook/IMG_1496.jpg": "56641b1317f74b5c555d56053ccc6cc1",
"assets/assets/images/cook/IMG_1070.jpg": "7abc58993df5a3f2fbdb5f7b9fa6a474",
"assets/assets/images/cook/IMG_1685.jpg": "d5d4031801cb8da3f0b5b462d3006c33",
"assets/assets/images/cook/IMG_1854.jpg": "0b14f6d956942419ef2e46cc01bbfb33",
"assets/assets/images/cook/IMG_2314.jpg": "e79c2d8d367fd57563151bb8b4081c54",
"assets/assets/images/cook/IMG_1537.jpg": "f7d905836795f3d645390729a7e751b5",
"assets/assets/images/cook/IMG_1810.jpg": "ec6c5fe1672529c8dbfec8b43e3a350b",
"assets/assets/images/cook/1663894279673.jpg": "40dabd03eeb51fd7c6dcc21e0b925092",
"assets/assets/images/cook/IMG_1421.jpg": "7eae0b2af2f4a6b5f7db0982495a5072",
"assets/assets/images/cook/IMG_1742.jpg": "d0df57464cddbf18bcffe9214838ce92",
"assets/assets/images/cook/IMG_1474.jpg": "ded96904c56ace8086d47983512c2695",
"assets/assets/images/cook/IMG_1514.jpg": "37c0ae4c3ee1f42cc4c55ea15b44a11d",
"assets/assets/images/cook/IMG_1613.jpg": "1d2b5627f0396e14407cd5a898e04e35",
"assets/assets/images/cook/IMG_2050.jpg": "084910f82f2ec38eaee023a73490ffc2",
"assets/assets/images/cook/IMG_2362.jpg": "9a2cb28ba10914f53c473569dc2826e7",
"assets/assets/images/cook/IMG_1794.jpg": "83e9149a38fae9e194e21d03665d11f8",
"assets/assets/images/cook/IMG_2328.jpg": "6547f9d2020d09e28b78bc7c8ea8dee8",
"assets/assets/images/cook/IMG_2291.jpg": "4a12931a5999c0c3e5c647ae0bdbe4f8",
"assets/assets/images/cook/IMG_1711.jpg": "065988ea85e8d286e3d25625258a1498",
"assets/assets/images/cook/IMG_1416.jpg": "5d5c0193506dac308b29008dbadd453d",
"assets/assets/images/cook/IMG_1768.jpg": "a24ebd81adb00a8970cb2e841f6d9aad",
"assets/assets/images/cook/A1BC6250-56F3-4AEC-B47D-115AC06CF4FBIMG_20221009_190814_jpg.jpg": "4bb844bb69b369304de8b51bd77959dc",
"assets/assets/images/cook/IMG_2350.jpg": "6a7f5bbfb198e35dea0eeebdfc37ef1f",
"assets/assets/images/cook/IMG_1605.jpg": "ca7a83032e9790666d74f2c0b9a7034a",
"assets/assets/images/cook/IMG_0949.jpg": "5aae5d3224be2c45d6b356a93327f5cf",
"assets/assets/images/cook/IMG_1835.jpg": "0f92d43fe4a711a97228fdbbad4a7ad0",
"assets/assets/images/cook/IMG_2020.jpg": "026e6a463ebb1755c9cc76bb6a040239",
"assets/assets/images/cook/IMG_1490.jpg": "394ffd292185a1717491c891be8998e2",
"assets/assets/images/cook/IMG_1800.jpg": "2ba7da837cccbe742274a0352b157cf6",
"assets/assets/images/cook/IMG_1504.jpg": "5ac8046fbad91181e613db0e35c46fcc",
"assets/assets/images/cook/IMG_0055.jpg": "16b93d64492a06ad192753a1061d3472",
"assets/assets/images/cook/IMG_1065.jpg": "910f42f8ced466bcee81584aa45803b6",
"assets/assets/images/cook/IMG_1783.jpg": "75e65a70bb6cc6eb469d116d833c4717",
"assets/assets/images/cook/IMG_1798.jpg": "8b0ef207cfa1bc5fb3326deb0e9a8c17",
"assets/assets/images/cook/IMG_2083.jpg": "7977182b7c2619e5ba6aa31faa47045d",
"assets/assets/images/cook/IMG_1066.jpg": "62cfc02f34b09634a191249209d21c98",
"assets/assets/images/cook/IMG_1836.jpg": "f87a2769daa4daf077a49ff907681b63",
"assets/assets/images/cook/IMG_1749.jpg": "1979a1a1c799c9e43df9bdafe3b92a65",
"assets/assets/images/cook/IMG_0948.jpg": "5b53df2cddc2564e08b3ec2e92618db6",
"assets/assets/images/cook/IMG_1195.jpg": "bb037ea5b57b62e18aaeb0ff034ef398",
"assets/assets/images/cook/IMG_2283.jpg": "74fa3ddad000bffae1fd835633393961",
"assets/assets/images/cook/IMG_2477.jpg": "fd87dfefca5c9827cc9bca08c37bd2fd",
"assets/assets/images/cook/IMG_0825.jpg": "9027fa49f0c0a7378458eb95a71b875c",
"assets/assets/images/cook/IMG_1684.jpg": "3b91e0d10becfc87b87f3b67ceb2067b",
"assets/assets/images/cook/IMG_2048.jpg": "d1397d6230d24075fa35ffbe0f2575c9",
"assets/assets/images/cook/IMG_2320.jpg": "9149aa0bdf3410da42870494aaabba1b",
"assets/assets/images/cook/IMG_1272.jpg": "1ac88fd58e14266061d51ec3250cbe52",
"assets/assets/images/cook/IMG_0799.jpg": "52b685e3669d60953dc326b5db6214f1",
"assets/assets/images/cook/IMG_1731.jpg": "e28283cdf434589a4cc1eb4dc0910fb8",
"assets/assets/images/background.jpeg": "1997f370159143b6a5b35d463dda3e76",
"assets/assets/images/coins.png": "955615f64f2c2e4e56c326ec405a91e0",
"assets/assets/images/phantomtale.png": "c9776ee6113230a12505675d0ac3082f",
"assets/assets/images/applemusicclone.png": "9dbb5008f119514a96ff1f71bad5513b",
"assets/assets/images/rssimply.png": "5db9f4ab0189a0f45226dddecdb6b20f",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "930fb547b06c359584a6f2a504a6e5c2",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b56ffc0eb443bee18cdacd88ba0d4e52",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/AssetManifest.bin.json": "e16a82c49f77c6ac434e16a7d4952c64",
"assets/FontManifest.json": "0d59003b30b05bfaa5150dd1c47e9772",
"assets/fonts/MaterialIcons-Regular.otf": "683403358361037f0a8653fce3b97d29",
"assets/AssetManifest.json": "01d9db4c6f1da8d82c0b8bd9d6670bbf",
"index.html": "fef2edd647788ac481a4fc246d29c043",
"/": "fef2edd647788ac481a4fc246d29c043",
"manifest.json": "62918a98531f418c0aaf3a04eff83258"};
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
