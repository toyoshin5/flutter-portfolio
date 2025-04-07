'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"index.html": "195c9c50c08c899fd7ed266821daad2d",
"/": "195c9c50c08c899fd7ed266821daad2d",
"assets/NOTICES": "801fce067f0683a5e3e876b004cd77be",
"assets/assets/images/brashmirror.jpeg": "92af676537e3081e8ba5909e655cdaa9",
"assets/assets/images/twinotes.jpeg": "4dd66baac575e0d6a042ed0321caaa17",
"assets/assets/images/rakupe.png": "3780524e014cbd738b7c78826189b37c",
"assets/assets/images/armeasure.png": "8f59f7438cab41100bef247542304189",
"assets/assets/images/proxy.png": "959fa77d811bd845ac455c0fb7eb0ca1",
"assets/assets/images/umap.jpeg": "1895d4c2fdf625c451cc767b712e5877",
"assets/assets/images/coins.png": "a0dd975d7888f17636e39da8cde8cfbe",
"assets/assets/images/applemusicclone.png": "dc0475caed5e7c00ee0c66390642c6ef",
"assets/assets/images/cook/IMG_1800.jpg": "2ba7da837cccbe742274a0352b157cf6",
"assets/assets/images/cook/IMG_1504.jpg": "5ac8046fbad91181e613db0e35c46fcc",
"assets/assets/images/cook/IMG_2320.jpg": "9149aa0bdf3410da42870494aaabba1b",
"assets/assets/images/cook/IMG_1685.jpg": "d5d4031801cb8da3f0b5b462d3006c33",
"assets/assets/images/cook/IMG_1537.jpg": "f7d905836795f3d645390729a7e751b5",
"assets/assets/images/cook/IMG_0055.jpg": "16b93d64492a06ad192753a1061d3472",
"assets/assets/images/cook/IMG_1272.jpg": "1ac88fd58e14266061d51ec3250cbe52",
"assets/assets/images/cook/IMG_1731.jpg": "e28283cdf434589a4cc1eb4dc0910fb8",
"assets/assets/images/cook/IMG_1111.jpg": "4bb844bb69b369304de8b51bd77959dc",
"assets/assets/images/cook/IMG_1496.jpg": "56641b1317f74b5c555d56053ccc6cc1",
"assets/assets/images/cook/IMG_1749.jpg": "1979a1a1c799c9e43df9bdafe3b92a65",
"assets/assets/images/cook/IMG_2083.jpg": "7977182b7c2619e5ba6aa31faa47045d",
"assets/assets/images/cook/IMG_1612.jpg": "48844b1f9f9b8f6d3b35dd3b22603c14",
"assets/assets/images/cook/IMG_1794.jpg": "83e9149a38fae9e194e21d03665d11f8",
"assets/assets/images/cook/IMG_2350.jpg": "6a7f5bbfb198e35dea0eeebdfc37ef1f",
"assets/assets/images/cook/IMG_1070.jpg": "7abc58993df5a3f2fbdb5f7b9fa6a474",
"assets/assets/images/cook/IMG_2291.jpg": "4a12931a5999c0c3e5c647ae0bdbe4f8",
"assets/assets/images/cook/IMG_0825.jpg": "9027fa49f0c0a7378458eb95a71b875c",
"assets/assets/images/cook/IMG_2362.jpg": "9a2cb28ba10914f53c473569dc2826e7",
"assets/assets/images/cook/IMG_0000.jpg": "1d2b5627f0396e14407cd5a898e04e35",
"assets/assets/images/cook/IMG_1066.jpg": "62cfc02f34b09634a191249209d21c98",
"assets/assets/images/cook/IMG_2048.jpg": "d1397d6230d24075fa35ffbe0f2575c9",
"assets/assets/images/cook/IMG_1810.jpg": "ec6c5fe1672529c8dbfec8b43e3a350b",
"assets/assets/images/cook/IMG_1417.jpg": "e872b8df3712a09cafbaff3ac4ad72d6",
"assets/assets/images/cook/IMG_1654.jpg": "737f55cb9c2a25785dfa18184566778e",
"assets/assets/images/cook/IMG_2477.jpg": "fd87dfefca5c9827cc9bca08c37bd2fd",
"assets/assets/images/cook/IMG_1514.jpg": "37c0ae4c3ee1f42cc4c55ea15b44a11d",
"assets/assets/images/cook/IMG_0799.jpg": "52b685e3669d60953dc326b5db6214f1",
"assets/assets/images/cook/1663894279673.jpg": "40dabd03eeb51fd7c6dcc21e0b925092",
"assets/assets/images/cook/IMG_1195.jpg": "bb037ea5b57b62e18aaeb0ff034ef398",
"assets/assets/images/cook/IMG_0649.jpg": "5aae5d3224be2c45d6b356a93327f5cf",
"assets/assets/images/cook/IMG_2050.jpg": "084910f82f2ec38eaee023a73490ffc2",
"assets/assets/images/cook/IMG_1811.jpg": "cdccecff469491f1a812ce47a817a09e",
"assets/assets/images/cook/IMG_1559.jpg": "269064a9acdb8d504450b6bf79bc7179",
"assets/assets/images/cook/IMG_1065.jpg": "910f42f8ced466bcee81584aa45803b6",
"assets/assets/images/cook/IMG_1416.jpg": "5d5c0193506dac308b29008dbadd453d",
"assets/assets/images/cook/IMG_1684.jpg": "3b91e0d10becfc87b87f3b67ceb2067b",
"assets/assets/images/cook/IMG_1711.jpg": "065988ea85e8d286e3d25625258a1498",
"assets/assets/images/cook/IMG_0948.jpg": "5b53df2cddc2564e08b3ec2e92618db6",
"assets/assets/images/cook/IMG_2113.jpg": "91218a9d2149506c5a9d941a930be6fe",
"assets/assets/images/cook/IMG_1783.jpg": "75e65a70bb6cc6eb469d116d833c4717",
"assets/assets/images/cook/IMG_1836.jpg": "f87a2769daa4daf077a49ff907681b63",
"assets/assets/images/cook/IMG_1421.jpg": "7eae0b2af2f4a6b5f7db0982495a5072",
"assets/assets/images/cook/IMG_1745.jpg": "b2cd14e06acdcede1e90ab44c6aba42d",
"assets/assets/images/cook/IMG_2328.jpg": "6547f9d2020d09e28b78bc7c8ea8dee8",
"assets/assets/images/cook/IMG_1490.jpg": "394ffd292185a1717491c891be8998e2",
"assets/assets/images/cook/IMG_2283.jpg": "74fa3ddad000bffae1fd835633393961",
"assets/assets/images/cook/IMG_2020.jpg": "026e6a463ebb1755c9cc76bb6a040239",
"assets/assets/images/scale.sh": "e6f63ff22a85fd1f5a24830ca6cbf218",
"assets/assets/images/s_cook/IMG_1800.jpg": "97816dcceefe32caf11b3c5a8199e51e",
"assets/assets/images/s_cook/IMG_1504.jpg": "aba8250c1dbcb57589e1714a690631ee",
"assets/assets/images/s_cook/IMG_2320.jpg": "b97b913442428327bc6decbf50552d2a",
"assets/assets/images/s_cook/IMG_1685.jpg": "74ffffed158258fa8d15216dac15f39e",
"assets/assets/images/s_cook/IMG_1537.jpg": "7071f5110781f961116bb44b50c8bd9a",
"assets/assets/images/s_cook/IMG_0055.jpg": "4dbcd47ac80983bd0d02a33c6b4d3761",
"assets/assets/images/s_cook/IMG_1272.jpg": "ab692472511fe4099283b6e539b4e899",
"assets/assets/images/s_cook/IMG_1731.jpg": "6ab7e1b3477156a4dd6eda7f7cab6f17",
"assets/assets/images/s_cook/IMG_1111.jpg": "17c2269034d4121cd62d88fcc7c7f1e5",
"assets/assets/images/s_cook/IMG_1496.jpg": "6c4e5ba644f1d7a37e6d80a414a9bcfe",
"assets/assets/images/s_cook/IMG_1749.jpg": "348c3695804cf14411a8e9ef3fdb3066",
"assets/assets/images/s_cook/IMG_2083.jpg": "f6f6d46aa241ad4ff7b4600e1112832d",
"assets/assets/images/s_cook/IMG_1612.jpg": "e11a96dcd66472c466ed1bc0aae04244",
"assets/assets/images/s_cook/IMG_1794.jpg": "2594c0fdba601c35a890db556d188767",
"assets/assets/images/s_cook/IMG_2350.jpg": "b796cfb53045a3898404db67817245b2",
"assets/assets/images/s_cook/IMG_1070.jpg": "53ede88b9e5ef72af4c18bb62a315ad1",
"assets/assets/images/s_cook/IMG_2291.jpg": "e4681be35ee20a4e01c0b8452198ad59",
"assets/assets/images/s_cook/IMG_0825.jpg": "4ab41c3938eb6b2af15ecf95fa06e756",
"assets/assets/images/s_cook/IMG_2362.jpg": "801b0e317f9bcf886adf8e7846e4c4f2",
"assets/assets/images/s_cook/IMG_0000.jpg": "34a94214e48ad20bf1f5d97d5dc9bed5",
"assets/assets/images/s_cook/IMG_1066.jpg": "bf9dfff735a5379c1ebb1b22732dbcff",
"assets/assets/images/s_cook/IMG_2048.jpg": "bc7d18f1299946c36bcf9eba78f8bc40",
"assets/assets/images/s_cook/IMG_1810.jpg": "87945a494b7f5fe1063f0f4619f66c3a",
"assets/assets/images/s_cook/IMG_1417.jpg": "50f8983ffc2f8cfbfbfcbb7eaab05ccc",
"assets/assets/images/s_cook/IMG_1654.jpg": "a27cad48f150999abd833c74a1000d16",
"assets/assets/images/s_cook/IMG_2477.jpg": "85aaf7fb9d13d53bf493882ecfc9487a",
"assets/assets/images/s_cook/IMG_1514.jpg": "1710e50e8d62fc4e1f64a65a818f8077",
"assets/assets/images/s_cook/IMG_0799.jpg": "3218e445d63f46546097063cd45762d9",
"assets/assets/images/s_cook/1663894279673.jpg": "e6816309da1c1968e40230164f0d7764",
"assets/assets/images/s_cook/IMG_1195.jpg": "b29ada1398e1a52228ce7089e7008cd2",
"assets/assets/images/s_cook/IMG_0649.jpg": "cf9db58dd11e149aa0ce0d5e4fe01b57",
"assets/assets/images/s_cook/IMG_2050.jpg": "9fbe52c7ba2058dbf8dcc1bf5e12f87e",
"assets/assets/images/s_cook/IMG_1811.jpg": "2b7a39b1505603e22ad54c5feca08dd7",
"assets/assets/images/s_cook/IMG_1559.jpg": "e4c05fe1aec8ce2e80b97a6331632e47",
"assets/assets/images/s_cook/IMG_1065.jpg": "bf760582805b328dd3d0c4da2076ce42",
"assets/assets/images/s_cook/IMG_1416.jpg": "4d67f4c0363ab8bafb96c05cd18aeeb7",
"assets/assets/images/s_cook/IMG_1684.jpg": "1c85ea9d75bd6a83a41858cb72c28236",
"assets/assets/images/s_cook/IMG_1711.jpg": "30b58cdafce70c11f0e3c8b78cd700bf",
"assets/assets/images/s_cook/IMG_0948.jpg": "abe22e8b8800591f02e57ea136a186b3",
"assets/assets/images/s_cook/IMG_2113.jpg": "e3c8f0b38881aa2c7b44e1d2a9070cd3",
"assets/assets/images/s_cook/IMG_1783.jpg": "bb62efd2ce6270b08168d54a011b35b9",
"assets/assets/images/s_cook/IMG_1836.jpg": "1601e3f57ab744446c0ee2a3d21f5b43",
"assets/assets/images/s_cook/IMG_1421.jpg": "c3ac023d18ef700ce9f5baed0964d63f",
"assets/assets/images/s_cook/IMG_1745.jpg": "f93c4fe9fab88130e39137a7fada970a",
"assets/assets/images/s_cook/IMG_2328.jpg": "7e1b439696bc2197e9dfa677b85ef14b",
"assets/assets/images/s_cook/IMG_1490.jpg": "293e45c601118937bcc0fa57eb5df3a8",
"assets/assets/images/s_cook/IMG_2283.jpg": "38e2d5b7c2d14b8e34d5286fc17d7434",
"assets/assets/images/s_cook/IMG_2020.jpg": "9d875d9879dae76c3b2722dce97e8869",
"assets/assets/images/background.jpeg": "a270d9877b47fa0aecea21c630aaa010",
"assets/assets/images/rssimply.png": "6daeced8585380d024a4adb48d8ffdff",
"assets/assets/images/mesh.jpg": "5b184c93064ac8034471758b1138fb64",
"assets/assets/images/photocurrency.jpeg": "65ab49244f5a9d2aa254f907a562a208",
"assets/assets/images/phantomtale.png": "b58216369697320970d8073c94eecfa3",
"assets/assets/font/SF-Mono-Bold.otf": "075c68cd6b34d3cc34eb5b0a0baa0991",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "dd0615df605e05f1935ff29402440cf6",
"assets/fonts/MaterialIcons-Regular.otf": "683403358361037f0a8653fce3b97d29",
"assets/FontManifest.json": "e1ac5f8d04bb19fa264e4b7e16586dfe",
"assets/AssetManifest.bin.json": "f90d20c962b5ff39c84afecf4775adf8",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "681c6888736289cc6779e40243e1c294",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "af1bc951c54eb3e60f2f154131159224",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "1b951c3a13025f8f11bf0c433da58625",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/AssetManifest.json": "22813fd440bad6bbbe6d63e1fa9ad792",
"version.json": "c420e205d8eac4ccea99913b4a50bfa7",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"main.dart.js": "6bbaf9b3c5f8a747c89b17d2dd2a40f1",
"icons/Icon-maskable-512.png": "7f8bba424382b0e6491c4ff377c5ed2f",
"icons/Icon-192.png": "60ac7ac8e9898668ba9f142110fe6178",
"icons/Icon-512.png": "996cf112dc017d03fe05685d53387e8c",
"icons/Icon-maskable-192.png": "9ab4f48567d4b428152227d42a9d995d",
"manifest.json": "62918a98531f418c0aaf3a04eff83258",
"favicon.png": "3764ce2959e06b1e2977dda51b886863",
"flutter_bootstrap.js": "5bc0f84b3c124b79ced1de38f12d90ac"};
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
