{fetchurl, linkFarm}: rec {
  offline_cache = linkFarm "offline" packages;
  packages = [

    {
      name = "ast-1.7.11.tgz";
      path = fetchurl {
        name = "ast-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/ast/-/ast-1.7.11.tgz";
        sha1 = "b988582cafbb2b095e8b556526f30c90d057cace";
      };
    }

    {
      name = "floating-point-hex-parser-1.7.11.tgz";
      path = fetchurl {
        name = "floating-point-hex-parser-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/floating-point-hex-parser/-/floating-point-hex-parser-1.7.11.tgz";
        sha1 = "a69f0af6502eb9a3c045555b1a6129d3d3f2e313";
      };
    }

    {
      name = "helper-api-error-1.7.11.tgz";
      path = fetchurl {
        name = "helper-api-error-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/helper-api-error/-/helper-api-error-1.7.11.tgz";
        sha1 = "c7b6bb8105f84039511a2b39ce494f193818a32a";
      };
    }

    {
      name = "helper-buffer-1.7.11.tgz";
      path = fetchurl {
        name = "helper-buffer-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/helper-buffer/-/helper-buffer-1.7.11.tgz";
        sha1 = "3122d48dcc6c9456ed982debe16c8f37101df39b";
      };
    }

    {
      name = "helper-code-frame-1.7.11.tgz";
      path = fetchurl {
        name = "helper-code-frame-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/helper-code-frame/-/helper-code-frame-1.7.11.tgz";
        sha1 = "cf8f106e746662a0da29bdef635fcd3d1248364b";
      };
    }

    {
      name = "helper-fsm-1.7.11.tgz";
      path = fetchurl {
        name = "helper-fsm-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/helper-fsm/-/helper-fsm-1.7.11.tgz";
        sha1 = "df38882a624080d03f7503f93e3f17ac5ac01181";
      };
    }

    {
      name = "helper-module-context-1.7.11.tgz";
      path = fetchurl {
        name = "helper-module-context-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/helper-module-context/-/helper-module-context-1.7.11.tgz";
        sha1 = "d874d722e51e62ac202476935d649c802fa0e209";
      };
    }

    {
      name = "helper-wasm-bytecode-1.7.11.tgz";
      path = fetchurl {
        name = "helper-wasm-bytecode-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/helper-wasm-bytecode/-/helper-wasm-bytecode-1.7.11.tgz";
        sha1 = "dd9a1e817f1c2eb105b4cf1013093cb9f3c9cb06";
      };
    }

    {
      name = "helper-wasm-section-1.7.11.tgz";
      path = fetchurl {
        name = "helper-wasm-section-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/helper-wasm-section/-/helper-wasm-section-1.7.11.tgz";
        sha1 = "9c9ac41ecf9fbcfffc96f6d2675e2de33811e68a";
      };
    }

    {
      name = "ieee754-1.7.11.tgz";
      path = fetchurl {
        name = "ieee754-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/ieee754/-/ieee754-1.7.11.tgz";
        sha1 = "c95839eb63757a31880aaec7b6512d4191ac640b";
      };
    }

    {
      name = "leb128-1.7.11.tgz";
      path = fetchurl {
        name = "leb128-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/leb128/-/leb128-1.7.11.tgz";
        sha1 = "d7267a1ee9c4594fd3f7e37298818ec65687db63";
      };
    }

    {
      name = "utf8-1.7.11.tgz";
      path = fetchurl {
        name = "utf8-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/utf8/-/utf8-1.7.11.tgz";
        sha1 = "06d7218ea9fdc94a6793aa92208160db3d26ee82";
      };
    }

    {
      name = "wasm-edit-1.7.11.tgz";
      path = fetchurl {
        name = "wasm-edit-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/wasm-edit/-/wasm-edit-1.7.11.tgz";
        sha1 = "8c74ca474d4f951d01dbae9bd70814ee22a82005";
      };
    }

    {
      name = "wasm-gen-1.7.11.tgz";
      path = fetchurl {
        name = "wasm-gen-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/wasm-gen/-/wasm-gen-1.7.11.tgz";
        sha1 = "9bbba942f22375686a6fb759afcd7ac9c45da1a8";
      };
    }

    {
      name = "wasm-opt-1.7.11.tgz";
      path = fetchurl {
        name = "wasm-opt-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/wasm-opt/-/wasm-opt-1.7.11.tgz";
        sha1 = "b331e8e7cef8f8e2f007d42c3a36a0580a7d6ca7";
      };
    }

    {
      name = "wasm-parser-1.7.11.tgz";
      path = fetchurl {
        name = "wasm-parser-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/wasm-parser/-/wasm-parser-1.7.11.tgz";
        sha1 = "6e3d20fa6a3519f6b084ef9391ad58211efb0a1a";
      };
    }

    {
      name = "wast-parser-1.7.11.tgz";
      path = fetchurl {
        name = "wast-parser-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/wast-parser/-/wast-parser-1.7.11.tgz";
        sha1 = "25bd117562ca8c002720ff8116ef9072d9ca869c";
      };
    }

    {
      name = "wast-printer-1.7.11.tgz";
      path = fetchurl {
        name = "wast-printer-1.7.11.tgz";
        url  = "https://registry.yarnpkg.com/@webassemblyjs/wast-printer/-/wast-printer-1.7.11.tgz";
        sha1 = "c4245b6de242cb50a2cc950174fdbf65c78d7813";
      };
    }

    {
      name = "ieee754-1.2.0.tgz";
      path = fetchurl {
        name = "ieee754-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/@xtuc/ieee754/-/ieee754-1.2.0.tgz";
        sha1 = "eef014a3145ae477a1cbc00cd1e552336dceb790";
      };
    }

    {
      name = "long-4.2.1.tgz";
      path = fetchurl {
        name = "long-4.2.1.tgz";
        url  = "https://registry.yarnpkg.com/@xtuc/long/-/long-4.2.1.tgz";
        sha1 = "5c85d662f76fa1d34575766c5dcd6615abcd30d8";
      };
    }

    {
      name = "JSONStream-0.10.0.tgz";
      path = fetchurl {
        name = "JSONStream-0.10.0.tgz";
        url  = "http://registry.npmjs.org/JSONStream/-/JSONStream-0.10.0.tgz";
        sha1 = "74349d0d89522b71f30f0a03ff9bd20ca6f12ac0";
      };
    }

    {
      name = "JSONStream-1.3.5.tgz";
      path = fetchurl {
        name = "JSONStream-1.3.5.tgz";
        url  = "https://registry.yarnpkg.com/JSONStream/-/JSONStream-1.3.5.tgz";
        sha1 = "3208c1f08d3a4d99261ab64f92302bc15e111ca0";
      };
    }

    {
      name = "abbrev-1.1.1.tgz";
      path = fetchurl {
        name = "abbrev-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/abbrev/-/abbrev-1.1.1.tgz";
        sha1 = "f8f2c887ad10bf67f634f005b6987fed3179aac8";
      };
    }

    {
      name = "accepts-1.3.5.tgz";
      path = fetchurl {
        name = "accepts-1.3.5.tgz";
        url  = "https://registry.yarnpkg.com/accepts/-/accepts-1.3.5.tgz";
        sha1 = "eb777df6011723a3b14e8a72c0805c8e86746bd2";
      };
    }

    {
      name = "ace-builds-1.4.1.tgz";
      path = fetchurl {
        name = "ace-builds-1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/ace-builds/-/ace-builds-1.4.1.tgz";
        sha1 = "a66e33bcd519918ee99bc54cac5d7399a83c8ff2";
      };
    }

    {
      name = "acorn-dynamic-import-3.0.0.tgz";
      path = fetchurl {
        name = "acorn-dynamic-import-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/acorn-dynamic-import/-/acorn-dynamic-import-3.0.0.tgz";
        sha1 = "901ceee4c7faaef7e07ad2a47e890675da50a278";
      };
    }

    {
      name = "acorn-dynamic-import-4.0.0.tgz";
      path = fetchurl {
        name = "acorn-dynamic-import-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/acorn-dynamic-import/-/acorn-dynamic-import-4.0.0.tgz";
        sha1 = "482210140582a36b83c3e342e1cfebcaa9240948";
      };
    }

    {
      name = "acorn-node-1.6.2.tgz";
      path = fetchurl {
        name = "acorn-node-1.6.2.tgz";
        url  = "https://registry.yarnpkg.com/acorn-node/-/acorn-node-1.6.2.tgz";
        sha1 = "b7d7ceca6f22e6417af933a62cad4de01048d5d2";
      };
    }

    {
      name = "acorn-walk-6.1.1.tgz";
      path = fetchurl {
        name = "acorn-walk-6.1.1.tgz";
        url  = "https://registry.yarnpkg.com/acorn-walk/-/acorn-walk-6.1.1.tgz";
        sha1 = "d363b66f5fac5f018ff9c3a1e7b6f8e310cc3913";
      };
    }

    {
      name = "acorn-5.7.3.tgz";
      path = fetchurl {
        name = "acorn-5.7.3.tgz";
        url  = "https://registry.yarnpkg.com/acorn/-/acorn-5.7.3.tgz";
        sha1 = "67aa231bf8812974b85235a96771eb6bd07ea279";
      };
    }

    {
      name = "acorn-6.0.4.tgz";
      path = fetchurl {
        name = "acorn-6.0.4.tgz";
        url  = "https://registry.yarnpkg.com/acorn/-/acorn-6.0.4.tgz";
        sha1 = "77377e7353b72ec5104550aa2d2097a2fd40b754";
      };
    }

    {
      name = "ajv-errors-1.0.0.tgz";
      path = fetchurl {
        name = "ajv-errors-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/ajv-errors/-/ajv-errors-1.0.0.tgz";
        sha1 = "ecf021fa108fd17dfb5e6b383f2dd233e31ffc59";
      };
    }

    {
      name = "ajv-keywords-3.2.0.tgz";
      path = fetchurl {
        name = "ajv-keywords-3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/ajv-keywords/-/ajv-keywords-3.2.0.tgz";
        sha1 = "e86b819c602cf8821ad637413698f1dec021847a";
      };
    }

    {
      name = "ajv-5.5.2.tgz";
      path = fetchurl {
        name = "ajv-5.5.2.tgz";
        url  = "https://registry.yarnpkg.com/ajv/-/ajv-5.5.2.tgz";
        sha1 = "73b5eeca3fab653e3d3f9422b341ad42205dc965";
      };
    }

    {
      name = "ajv-6.5.5.tgz";
      path = fetchurl {
        name = "ajv-6.5.5.tgz";
        url  = "https://registry.yarnpkg.com/ajv/-/ajv-6.5.5.tgz";
        sha1 = "cf97cdade71c6399a92c6d6c4177381291b781a1";
      };
    }

    {
      name = "amdefine-1.0.1.tgz";
      path = fetchurl {
        name = "amdefine-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/amdefine/-/amdefine-1.0.1.tgz";
        sha1 = "4a5282ac164729e93619bcfd3ad151f817ce91f5";
      };
    }

    {
      name = "ansi-colors-3.2.1.tgz";
      path = fetchurl {
        name = "ansi-colors-3.2.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-colors/-/ansi-colors-3.2.1.tgz";
        sha1 = "9638047e4213f3428a11944a7d4b31cba0a3ff95";
      };
    }

    {
      name = "ansi-html-0.0.7.tgz";
      path = fetchurl {
        name = "ansi-html-0.0.7.tgz";
        url  = "https://registry.yarnpkg.com/ansi-html/-/ansi-html-0.0.7.tgz";
        sha1 = "813584021962a9e9e6fd039f940d12f56ca7859e";
      };
    }

    {
      name = "ansi-regex-2.1.1.tgz";
      path = fetchurl {
        name = "ansi-regex-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-2.1.1.tgz";
        sha1 = "c3b33ab5ee360d86e0e628f0468ae7ef27d654df";
      };
    }

    {
      name = "ansi-regex-3.0.0.tgz";
      path = fetchurl {
        name = "ansi-regex-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-3.0.0.tgz";
        sha1 = "ed0317c322064f79466c02966bddb605ab37d998";
      };
    }

    {
      name = "ansi-styles-2.2.1.tgz";
      path = fetchurl {
        name = "ansi-styles-2.2.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-2.2.1.tgz";
        sha1 = "b432dd3358b634cf75e1e4664368240533c1ddbe";
      };
    }

    {
      name = "ansi-styles-3.2.1.tgz";
      path = fetchurl {
        name = "ansi-styles-3.2.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-3.2.1.tgz";
        sha1 = "41fbb20243e50b12be0f04b8dedbf07520ce841d";
      };
    }

    {
      name = "anymatch-2.0.0.tgz";
      path = fetchurl {
        name = "anymatch-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/anymatch/-/anymatch-2.0.0.tgz";
        sha1 = "bcb24b4f37934d9aa7ac17b4adaf89e7c76ef2eb";
      };
    }

    {
      name = "aproba-1.2.0.tgz";
      path = fetchurl {
        name = "aproba-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/aproba/-/aproba-1.2.0.tgz";
        sha1 = "6802e6264efd18c790a1b0d517f0f2627bf2c94a";
      };
    }

    {
      name = "are-we-there-yet-1.1.5.tgz";
      path = fetchurl {
        name = "are-we-there-yet-1.1.5.tgz";
        url  = "https://registry.yarnpkg.com/are-we-there-yet/-/are-we-there-yet-1.1.5.tgz";
        sha1 = "4b35c2944f062a8bfcda66410760350fe9ddfc21";
      };
    }

    {
      name = "arr-diff-4.0.0.tgz";
      path = fetchurl {
        name = "arr-diff-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/arr-diff/-/arr-diff-4.0.0.tgz";
        sha1 = "d6461074febfec71e7e15235761a329a5dc7c520";
      };
    }

    {
      name = "arr-flatten-1.1.0.tgz";
      path = fetchurl {
        name = "arr-flatten-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/arr-flatten/-/arr-flatten-1.1.0.tgz";
        sha1 = "36048bbff4e7b47e136644316c99669ea5ae91f1";
      };
    }

    {
      name = "arr-union-3.1.0.tgz";
      path = fetchurl {
        name = "arr-union-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/arr-union/-/arr-union-3.1.0.tgz";
        sha1 = "e39b09aea9def866a8f206e288af63919bae39c4";
      };
    }

    {
      name = "array-filter-0.0.1.tgz";
      path = fetchurl {
        name = "array-filter-0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/array-filter/-/array-filter-0.0.1.tgz";
        sha1 = "7da8cf2e26628ed732803581fd21f67cacd2eeec";
      };
    }

    {
      name = "array-find-index-1.0.2.tgz";
      path = fetchurl {
        name = "array-find-index-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/array-find-index/-/array-find-index-1.0.2.tgz";
        sha1 = "df010aa1287e164bbda6f9723b0a96a1ec4187a1";
      };
    }

    {
      name = "array-flatten-1.1.1.tgz";
      path = fetchurl {
        name = "array-flatten-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/array-flatten/-/array-flatten-1.1.1.tgz";
        sha1 = "9a5f699051b1e7073328f2a008968b64ea2955d2";
      };
    }

    {
      name = "array-flatten-2.1.1.tgz";
      path = fetchurl {
        name = "array-flatten-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/array-flatten/-/array-flatten-2.1.1.tgz";
        sha1 = "426bb9da84090c1838d812c8150af20a8331e296";
      };
    }

    {
      name = "array-map-0.0.0.tgz";
      path = fetchurl {
        name = "array-map-0.0.0.tgz";
        url  = "https://registry.yarnpkg.com/array-map/-/array-map-0.0.0.tgz";
        sha1 = "88a2bab73d1cf7bcd5c1b118a003f66f665fa662";
      };
    }

    {
      name = "array-reduce-0.0.0.tgz";
      path = fetchurl {
        name = "array-reduce-0.0.0.tgz";
        url  = "https://registry.yarnpkg.com/array-reduce/-/array-reduce-0.0.0.tgz";
        sha1 = "173899d3ffd1c7d9383e4479525dbe278cab5f2b";
      };
    }

    {
      name = "array-union-1.0.2.tgz";
      path = fetchurl {
        name = "array-union-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/array-union/-/array-union-1.0.2.tgz";
        sha1 = "9a34410e4f4e3da23dea375be5be70f24778ec39";
      };
    }

    {
      name = "array-uniq-1.0.3.tgz";
      path = fetchurl {
        name = "array-uniq-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/array-uniq/-/array-uniq-1.0.3.tgz";
        sha1 = "af6ac877a25cc7f74e058894753858dfdb24fdb6";
      };
    }

    {
      name = "array-unique-0.3.2.tgz";
      path = fetchurl {
        name = "array-unique-0.3.2.tgz";
        url  = "https://registry.yarnpkg.com/array-unique/-/array-unique-0.3.2.tgz";
        sha1 = "a894b75d4bc4f6cd679ef3244a9fd8f46ae2d428";
      };
    }

    {
      name = "arrify-1.0.1.tgz";
      path = fetchurl {
        name = "arrify-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/arrify/-/arrify-1.0.1.tgz";
        sha1 = "898508da2226f380df904728456849c1501a4b0d";
      };
    }

    {
      name = "asn1.js-4.10.1.tgz";
      path = fetchurl {
        name = "asn1.js-4.10.1.tgz";
        url  = "https://registry.yarnpkg.com/asn1.js/-/asn1.js-4.10.1.tgz";
        sha1 = "b9c2bf5805f1e64aadeed6df3a2bfafb5a73f5a0";
      };
    }

    {
      name = "asn1-0.2.4.tgz";
      path = fetchurl {
        name = "asn1-0.2.4.tgz";
        url  = "https://registry.yarnpkg.com/asn1/-/asn1-0.2.4.tgz";
        sha1 = "8d2475dfab553bb33e77b54e59e880bb8ce23136";
      };
    }

    {
      name = "assert-plus-1.0.0.tgz";
      path = fetchurl {
        name = "assert-plus-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/assert-plus/-/assert-plus-1.0.0.tgz";
        sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
      };
    }

    {
      name = "assert-1.4.1.tgz";
      path = fetchurl {
        name = "assert-1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/assert/-/assert-1.4.1.tgz";
        sha1 = "99912d591836b5a6f5b345c0f07eefc08fc65d91";
      };
    }

    {
      name = "assign-symbols-1.0.0.tgz";
      path = fetchurl {
        name = "assign-symbols-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/assign-symbols/-/assign-symbols-1.0.0.tgz";
        sha1 = "59667f41fadd4f20ccbc2bb96b8d4f7f78ec0367";
      };
    }

    {
      name = "async-each-1.0.1.tgz";
      path = fetchurl {
        name = "async-each-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/async-each/-/async-each-1.0.1.tgz";
        sha1 = "19d386a1d9edc6e7c1c85d388aedbcc56d33602d";
      };
    }

    {
      name = "async-foreach-0.1.3.tgz";
      path = fetchurl {
        name = "async-foreach-0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/async-foreach/-/async-foreach-0.1.3.tgz";
        sha1 = "36121f845c0578172de419a97dbeb1d16ec34542";
      };
    }

    {
      name = "async-1.5.2.tgz";
      path = fetchurl {
        name = "async-1.5.2.tgz";
        url  = "http://registry.npmjs.org/async/-/async-1.5.2.tgz";
        sha1 = "ec6a61ae56480c0c3cb241c95618e20892f9672a";
      };
    }

    {
      name = "async-2.6.1.tgz";
      path = fetchurl {
        name = "async-2.6.1.tgz";
        url  = "https://registry.yarnpkg.com/async/-/async-2.6.1.tgz";
        sha1 = "b245a23ca71930044ec53fa46aa00a3e87c6a610";
      };
    }

    {
      name = "asynckit-0.4.0.tgz";
      path = fetchurl {
        name = "asynckit-0.4.0.tgz";
        url  = "https://registry.yarnpkg.com/asynckit/-/asynckit-0.4.0.tgz";
        sha1 = "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79";
      };
    }

    {
      name = "atob-2.1.2.tgz";
      path = fetchurl {
        name = "atob-2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/atob/-/atob-2.1.2.tgz";
        sha1 = "6d9517eb9e030d2436666651e86bd9f6f13533c9";
      };
    }

    {
      name = "aws-sign2-0.7.0.tgz";
      path = fetchurl {
        name = "aws-sign2-0.7.0.tgz";
        url  = "https://registry.yarnpkg.com/aws-sign2/-/aws-sign2-0.7.0.tgz";
        sha1 = "b46e890934a9591f2d2f6f86d7e6a9f1b3fe76a8";
      };
    }

    {
      name = "aws4-1.8.0.tgz";
      path = fetchurl {
        name = "aws4-1.8.0.tgz";
        url  = "https://registry.yarnpkg.com/aws4/-/aws4-1.8.0.tgz";
        sha1 = "f0e003d9ca9e7f59c7a508945d7b2ef9a04a542f";
      };
    }

    {
      name = "babel-code-frame-6.26.0.tgz";
      path = fetchurl {
        name = "babel-code-frame-6.26.0.tgz";
        url  = "https://registry.yarnpkg.com/babel-code-frame/-/babel-code-frame-6.26.0.tgz";
        sha1 = "63fd43f7dc1e3bb7ce35947db8fe369a3f58c74b";
      };
    }

    {
      name = "balanced-match-1.0.0.tgz";
      path = fetchurl {
        name = "balanced-match-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/balanced-match/-/balanced-match-1.0.0.tgz";
        sha1 = "89b4d199ab2bee49de164ea02b89ce462d71b767";
      };
    }

    {
      name = "base64-js-1.3.0.tgz";
      path = fetchurl {
        name = "base64-js-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/base64-js/-/base64-js-1.3.0.tgz";
        sha1 = "cab1e6118f051095e58b5281aea8c1cd22bfc0e3";
      };
    }

    {
      name = "base-0.11.2.tgz";
      path = fetchurl {
        name = "base-0.11.2.tgz";
        url  = "https://registry.yarnpkg.com/base/-/base-0.11.2.tgz";
        sha1 = "7bde5ced145b6d551a90db87f83c558b4eb48a8f";
      };
    }

    {
      name = "batch-0.6.1.tgz";
      path = fetchurl {
        name = "batch-0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/batch/-/batch-0.6.1.tgz";
        sha1 = "dc34314f4e679318093fc760272525f94bf25c16";
      };
    }

    {
      name = "bcrypt-pbkdf-1.0.2.tgz";
      path = fetchurl {
        name = "bcrypt-pbkdf-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.2.tgz";
        sha1 = "a4301d389b6a43f9b67ff3ca11a3f6637e360e9e";
      };
    }

    {
      name = "big.js-3.2.0.tgz";
      path = fetchurl {
        name = "big.js-3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/big.js/-/big.js-3.2.0.tgz";
        sha1 = "a5fc298b81b9e0dca2e458824784b65c52ba588e";
      };
    }

    {
      name = "binary-extensions-1.12.0.tgz";
      path = fetchurl {
        name = "binary-extensions-1.12.0.tgz";
        url  = "https://registry.yarnpkg.com/binary-extensions/-/binary-extensions-1.12.0.tgz";
        sha1 = "c2d780f53d45bba8317a8902d4ceeaf3a6385b14";
      };
    }

    {
      name = "block-stream-0.0.9.tgz";
      path = fetchurl {
        name = "block-stream-0.0.9.tgz";
        url  = "https://registry.yarnpkg.com/block-stream/-/block-stream-0.0.9.tgz";
        sha1 = "13ebfe778a03205cfe03751481ebb4b3300c126a";
      };
    }

    {
      name = "bluebird-3.5.3.tgz";
      path = fetchurl {
        name = "bluebird-3.5.3.tgz";
        url  = "https://registry.yarnpkg.com/bluebird/-/bluebird-3.5.3.tgz";
        sha1 = "7d01c6f9616c9a51ab0f8c549a79dfe6ec33efa7";
      };
    }

    {
      name = "bn.js-4.11.8.tgz";
      path = fetchurl {
        name = "bn.js-4.11.8.tgz";
        url  = "https://registry.yarnpkg.com/bn.js/-/bn.js-4.11.8.tgz";
        sha1 = "2cde09eb5ee341f484746bb0309b3253b1b1442f";
      };
    }

    {
      name = "body-parser-1.18.3.tgz";
      path = fetchurl {
        name = "body-parser-1.18.3.tgz";
        url  = "https://registry.yarnpkg.com/body-parser/-/body-parser-1.18.3.tgz";
        sha1 = "5b292198ffdd553b3a0f20ded0592b956955c8b4";
      };
    }

    {
      name = "bonjour-3.5.0.tgz";
      path = fetchurl {
        name = "bonjour-3.5.0.tgz";
        url  = "https://registry.yarnpkg.com/bonjour/-/bonjour-3.5.0.tgz";
        sha1 = "8e890a183d8ee9a2393b3844c691a42bcf7bc9f5";
      };
    }

    {
      name = "boolbase-1.0.0.tgz";
      path = fetchurl {
        name = "boolbase-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/boolbase/-/boolbase-1.0.0.tgz";
        sha1 = "68dff5fbe60c51eb37725ea9e3ed310dcc1e776e";
      };
    }

    {
      name = "bootstrap-4.1.3.tgz";
      path = fetchurl {
        name = "bootstrap-4.1.3.tgz";
        url  = "https://registry.yarnpkg.com/bootstrap/-/bootstrap-4.1.3.tgz";
        sha1 = "0eb371af2c8448e8c210411d0cb824a6409a12be";
      };
    }

    {
      name = "bower-1.8.4.tgz";
      path = fetchurl {
        name = "bower-1.8.4.tgz";
        url  = "https://registry.yarnpkg.com/bower/-/bower-1.8.4.tgz";
        sha1 = "e7876a076deb8137f7d06525dc5e8c66db82f28a";
      };
    }

    {
      name = "brace-expansion-1.1.11.tgz";
      path = fetchurl {
        name = "brace-expansion-1.1.11.tgz";
        url  = "https://registry.yarnpkg.com/brace-expansion/-/brace-expansion-1.1.11.tgz";
        sha1 = "3c7fcbf529d87226f3d2f52b966ff5271eb441dd";
      };
    }

    {
      name = "braces-2.3.2.tgz";
      path = fetchurl {
        name = "braces-2.3.2.tgz";
        url  = "https://registry.yarnpkg.com/braces/-/braces-2.3.2.tgz";
        sha1 = "5979fd3f14cd531565e5fa2df1abfff1dfaee729";
      };
    }

    {
      name = "brorand-1.1.0.tgz";
      path = fetchurl {
        name = "brorand-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/brorand/-/brorand-1.1.0.tgz";
        sha1 = "12c25efe40a45e3c323eb8675a0a0ce57b22371f";
      };
    }

    {
      name = "browser-pack-6.1.0.tgz";
      path = fetchurl {
        name = "browser-pack-6.1.0.tgz";
        url  = "https://registry.yarnpkg.com/browser-pack/-/browser-pack-6.1.0.tgz";
        sha1 = "c34ba10d0b9ce162b5af227c7131c92c2ecd5774";
      };
    }

    {
      name = "browser-resolve-1.11.3.tgz";
      path = fetchurl {
        name = "browser-resolve-1.11.3.tgz";
        url  = "https://registry.yarnpkg.com/browser-resolve/-/browser-resolve-1.11.3.tgz";
        sha1 = "9b7cbb3d0f510e4cb86bdbd796124d28b5890af6";
      };
    }

    {
      name = "browserify-aes-1.2.0.tgz";
      path = fetchurl {
        name = "browserify-aes-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/browserify-aes/-/browserify-aes-1.2.0.tgz";
        sha1 = "326734642f403dabc3003209853bb70ad428ef48";
      };
    }

    {
      name = "browserify-cache-api-3.0.1.tgz";
      path = fetchurl {
        name = "browserify-cache-api-3.0.1.tgz";
        url  = "http://registry.npmjs.org/browserify-cache-api/-/browserify-cache-api-3.0.1.tgz";
        sha1 = "96247e853f068fd6e0d45cc73f0bb2cd9778ef02";
      };
    }

    {
      name = "browserify-cipher-1.0.1.tgz";
      path = fetchurl {
        name = "browserify-cipher-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/browserify-cipher/-/browserify-cipher-1.0.1.tgz";
        sha1 = "8d6474c1b870bfdabcd3bcfcc1934a10e94f15f0";
      };
    }

    {
      name = "browserify-des-1.0.2.tgz";
      path = fetchurl {
        name = "browserify-des-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/browserify-des/-/browserify-des-1.0.2.tgz";
        sha1 = "3af4f1f59839403572f1c66204375f7a7f703e9c";
      };
    }

    {
      name = "browserify-incremental-3.1.1.tgz";
      path = fetchurl {
        name = "browserify-incremental-3.1.1.tgz";
        url  = "http://registry.npmjs.org/browserify-incremental/-/browserify-incremental-3.1.1.tgz";
        sha1 = "0713cb7587247a632a9f08cf1bd169b878b62a8a";
      };
    }

    {
      name = "browserify-rsa-4.0.1.tgz";
      path = fetchurl {
        name = "browserify-rsa-4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/browserify-rsa/-/browserify-rsa-4.0.1.tgz";
        sha1 = "21e0abfaf6f2029cf2fafb133567a701d4135524";
      };
    }

    {
      name = "browserify-sign-4.0.4.tgz";
      path = fetchurl {
        name = "browserify-sign-4.0.4.tgz";
        url  = "https://registry.yarnpkg.com/browserify-sign/-/browserify-sign-4.0.4.tgz";
        sha1 = "aa4eb68e5d7b658baa6bf6a57e630cbd7a93d298";
      };
    }

    {
      name = "browserify-zlib-0.2.0.tgz";
      path = fetchurl {
        name = "browserify-zlib-0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/browserify-zlib/-/browserify-zlib-0.2.0.tgz";
        sha1 = "2869459d9aa3be245fe8fe2ca1f46e2e7f54d73f";
      };
    }

    {
      name = "browserify-zlib-0.1.4.tgz";
      path = fetchurl {
        name = "browserify-zlib-0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/browserify-zlib/-/browserify-zlib-0.1.4.tgz";
        sha1 = "bb35f8a519f600e0fa6b8485241c979d0141fb2d";
      };
    }

    {
      name = "browserify-13.3.0.tgz";
      path = fetchurl {
        name = "browserify-13.3.0.tgz";
        url  = "http://registry.npmjs.org/browserify/-/browserify-13.3.0.tgz";
        sha1 = "b5a9c9020243f0c70e4675bec8223bc627e415ce";
      };
    }

    {
      name = "buffer-crc32-0.2.13.tgz";
      path = fetchurl {
        name = "buffer-crc32-0.2.13.tgz";
        url  = "https://registry.yarnpkg.com/buffer-crc32/-/buffer-crc32-0.2.13.tgz";
        sha1 = "0d333e3f00eac50aa1454abd30ef8c2a5d9a7242";
      };
    }

    {
      name = "buffer-from-1.1.1.tgz";
      path = fetchurl {
        name = "buffer-from-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/buffer-from/-/buffer-from-1.1.1.tgz";
        sha1 = "32713bc028f75c02fdb710d7c7bcec1f2c6070ef";
      };
    }

    {
      name = "buffer-indexof-1.1.1.tgz";
      path = fetchurl {
        name = "buffer-indexof-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/buffer-indexof/-/buffer-indexof-1.1.1.tgz";
        sha1 = "52fabcc6a606d1a00302802648ef68f639da268c";
      };
    }

    {
      name = "buffer-xor-1.0.3.tgz";
      path = fetchurl {
        name = "buffer-xor-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/buffer-xor/-/buffer-xor-1.0.3.tgz";
        sha1 = "26e61ed1422fb70dd42e6e36729ed51d855fe8d9";
      };
    }

    {
      name = "buffer-4.9.1.tgz";
      path = fetchurl {
        name = "buffer-4.9.1.tgz";
        url  = "http://registry.npmjs.org/buffer/-/buffer-4.9.1.tgz";
        sha1 = "6d1bb601b07a4efced97094132093027c95bc298";
      };
    }

    {
      name = "builtin-modules-1.1.1.tgz";
      path = fetchurl {
        name = "builtin-modules-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/builtin-modules/-/builtin-modules-1.1.1.tgz";
        sha1 = "270f076c5a72c02f5b65a47df94c5fe3a278892f";
      };
    }

    {
      name = "builtin-status-codes-3.0.0.tgz";
      path = fetchurl {
        name = "builtin-status-codes-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/builtin-status-codes/-/builtin-status-codes-3.0.0.tgz";
        sha1 = "85982878e21b98e1c66425e03d0174788f569ee8";
      };
    }

    {
      name = "bytes-3.0.0.tgz";
      path = fetchurl {
        name = "bytes-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/bytes/-/bytes-3.0.0.tgz";
        sha1 = "d32815404d689699f85a4ea4fa8755dd13a96048";
      };
    }

    {
      name = "cacache-11.3.1.tgz";
      path = fetchurl {
        name = "cacache-11.3.1.tgz";
        url  = "https://registry.yarnpkg.com/cacache/-/cacache-11.3.1.tgz";
        sha1 = "d09d25f6c4aca7a6d305d141ae332613aa1d515f";
      };
    }

    {
      name = "cache-base-1.0.1.tgz";
      path = fetchurl {
        name = "cache-base-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/cache-base/-/cache-base-1.0.1.tgz";
        sha1 = "0a7f46416831c8b662ee36fe4e7c59d76f666ab2";
      };
    }

    {
      name = "cached-path-relative-1.0.2.tgz";
      path = fetchurl {
        name = "cached-path-relative-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/cached-path-relative/-/cached-path-relative-1.0.2.tgz";
        sha1 = "a13df4196d26776220cc3356eb147a52dba2c6db";
      };
    }

    {
      name = "camel-case-3.0.0.tgz";
      path = fetchurl {
        name = "camel-case-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/camel-case/-/camel-case-3.0.0.tgz";
        sha1 = "ca3c3688a4e9cf3a4cda777dc4dcbc713249cf73";
      };
    }

    {
      name = "camelcase-keys-2.1.0.tgz";
      path = fetchurl {
        name = "camelcase-keys-2.1.0.tgz";
        url  = "http://registry.npmjs.org/camelcase-keys/-/camelcase-keys-2.1.0.tgz";
        sha1 = "308beeaffdf28119051efa1d932213c91b8f92e7";
      };
    }

    {
      name = "camelcase-2.1.1.tgz";
      path = fetchurl {
        name = "camelcase-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/camelcase/-/camelcase-2.1.1.tgz";
        sha1 = "7c1d16d679a1bbe59ca02cacecfb011e201f5a1f";
      };
    }

    {
      name = "camelcase-3.0.0.tgz";
      path = fetchurl {
        name = "camelcase-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/camelcase/-/camelcase-3.0.0.tgz";
        sha1 = "32fc4b9fcdaf845fcdf7e73bb97cac2261f0ab0a";
      };
    }

    {
      name = "camelcase-4.1.0.tgz";
      path = fetchurl {
        name = "camelcase-4.1.0.tgz";
        url  = "https://registry.yarnpkg.com/camelcase/-/camelcase-4.1.0.tgz";
        sha1 = "d545635be1e33c542649c69173e5de6acfae34dd";
      };
    }

    {
      name = "caseless-0.12.0.tgz";
      path = fetchurl {
        name = "caseless-0.12.0.tgz";
        url  = "https://registry.yarnpkg.com/caseless/-/caseless-0.12.0.tgz";
        sha1 = "1b681c21ff84033c826543090689420d187151dc";
      };
    }

    {
      name = "chalk-1.1.3.tgz";
      path = fetchurl {
        name = "chalk-1.1.3.tgz";
        url  = "http://registry.npmjs.org/chalk/-/chalk-1.1.3.tgz";
        sha1 = "a8115c55e4a702fe4d150abd3872822a7e09fc98";
      };
    }

    {
      name = "chalk-2.4.1.tgz";
      path = fetchurl {
        name = "chalk-2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/chalk/-/chalk-2.4.1.tgz";
        sha1 = "18c49ab16a037b6eb0152cc83e3471338215b66e";
      };
    }

    {
      name = "chartist-plugin-axistitle-0.0.4.tgz";
      path = fetchurl {
        name = "chartist-plugin-axistitle-0.0.4.tgz";
        url  = "https://registry.yarnpkg.com/chartist-plugin-axistitle/-/chartist-plugin-axistitle-0.0.4.tgz";
        sha1 = "102d7b84260061292dff666b918fedc955deb144";
      };
    }

    {
      name = "chartist-plugin-tooltips-0.0.17.tgz";
      path = fetchurl {
        name = "chartist-plugin-tooltips-0.0.17.tgz";
        url  = "https://registry.yarnpkg.com/chartist-plugin-tooltips/-/chartist-plugin-tooltips-0.0.17.tgz";
        sha1 = "fc1a98eb5d3771235b6e08cd1c18cc96c2110660";
      };
    }

    {
      name = "chartist-0.11.0.tgz";
      path = fetchurl {
        name = "chartist-0.11.0.tgz";
        url  = "https://registry.yarnpkg.com/chartist/-/chartist-0.11.0.tgz";
        sha1 = "84ba5e05490d096d93dcfa9343ebc31ef6a3bd28";
      };
    }

    {
      name = "chokidar-2.0.4.tgz";
      path = fetchurl {
        name = "chokidar-2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/chokidar/-/chokidar-2.0.4.tgz";
        sha1 = "356ff4e2b0e8e43e322d18a372460bbcf3accd26";
      };
    }

    {
      name = "chownr-1.1.1.tgz";
      path = fetchurl {
        name = "chownr-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/chownr/-/chownr-1.1.1.tgz";
        sha1 = "54726b8b8fff4df053c42187e801fb4412df1494";
      };
    }

    {
      name = "chrome-trace-event-1.0.0.tgz";
      path = fetchurl {
        name = "chrome-trace-event-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/chrome-trace-event/-/chrome-trace-event-1.0.0.tgz";
        sha1 = "45a91bd2c20c9411f0963b5aaeb9a1b95e09cc48";
      };
    }

    {
      name = "cipher-base-1.0.4.tgz";
      path = fetchurl {
        name = "cipher-base-1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/cipher-base/-/cipher-base-1.0.4.tgz";
        sha1 = "8760e4ecc272f4c363532f926d874aae2c1397de";
      };
    }

    {
      name = "class-utils-0.3.6.tgz";
      path = fetchurl {
        name = "class-utils-0.3.6.tgz";
        url  = "https://registry.yarnpkg.com/class-utils/-/class-utils-0.3.6.tgz";
        sha1 = "f93369ae8b9a7ce02fd41faad0ca83033190c463";
      };
    }

    {
      name = "clean-css-4.2.1.tgz";
      path = fetchurl {
        name = "clean-css-4.2.1.tgz";
        url  = "https://registry.yarnpkg.com/clean-css/-/clean-css-4.2.1.tgz";
        sha1 = "2d411ef76b8569b6d0c84068dabe85b0aa5e5c17";
      };
    }

    {
      name = "cliui-3.2.0.tgz";
      path = fetchurl {
        name = "cliui-3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/cliui/-/cliui-3.2.0.tgz";
        sha1 = "120601537a916d29940f934da3b48d585a39213d";
      };
    }

    {
      name = "cliui-4.1.0.tgz";
      path = fetchurl {
        name = "cliui-4.1.0.tgz";
        url  = "https://registry.yarnpkg.com/cliui/-/cliui-4.1.0.tgz";
        sha1 = "348422dbe82d800b3022eef4f6ac10bf2e4d1b49";
      };
    }

    {
      name = "clone-deep-2.0.2.tgz";
      path = fetchurl {
        name = "clone-deep-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/clone-deep/-/clone-deep-2.0.2.tgz";
        sha1 = "00db3a1e173656730d1188c3d6aced6d7ea97713";
      };
    }

    {
      name = "co-4.6.0.tgz";
      path = fetchurl {
        name = "co-4.6.0.tgz";
        url  = "https://registry.yarnpkg.com/co/-/co-4.6.0.tgz";
        sha1 = "6ea6bdf3d853ae54ccb8e47bfa0bf3f9031fb184";
      };
    }

    {
      name = "code-point-at-1.1.0.tgz";
      path = fetchurl {
        name = "code-point-at-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/code-point-at/-/code-point-at-1.1.0.tgz";
        sha1 = "0d070b4d043a5bea33a2f1a40e2edb3d9a4ccf77";
      };
    }

    {
      name = "collection-visit-1.0.0.tgz";
      path = fetchurl {
        name = "collection-visit-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/collection-visit/-/collection-visit-1.0.0.tgz";
        sha1 = "4bc0373c164bc3291b4d368c829cf1a80a59dca0";
      };
    }

    {
      name = "color-convert-1.9.3.tgz";
      path = fetchurl {
        name = "color-convert-1.9.3.tgz";
        url  = "https://registry.yarnpkg.com/color-convert/-/color-convert-1.9.3.tgz";
        sha1 = "bb71850690e1f136567de629d2d5471deda4c1e8";
      };
    }

    {
      name = "color-name-1.1.3.tgz";
      path = fetchurl {
        name = "color-name-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/color-name/-/color-name-1.1.3.tgz";
        sha1 = "a7d0558bd89c42f795dd42328f740831ca53bc25";
      };
    }

    {
      name = "colors-1.3.2.tgz";
      path = fetchurl {
        name = "colors-1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/colors/-/colors-1.3.2.tgz";
        sha1 = "2df8ff573dfbf255af562f8ce7181d6b971a359b";
      };
    }

    {
      name = "combine-source-map-0.8.0.tgz";
      path = fetchurl {
        name = "combine-source-map-0.8.0.tgz";
        url  = "https://registry.yarnpkg.com/combine-source-map/-/combine-source-map-0.8.0.tgz";
        sha1 = "a58d0df042c186fcf822a8e8015f5450d2d79a8b";
      };
    }

    {
      name = "combined-stream-1.0.7.tgz";
      path = fetchurl {
        name = "combined-stream-1.0.7.tgz";
        url  = "https://registry.yarnpkg.com/combined-stream/-/combined-stream-1.0.7.tgz";
        sha1 = "2d1d24317afb8abe95d6d2c0b07b57813539d828";
      };
    }

    {
      name = "commander-2.17.1.tgz";
      path = fetchurl {
        name = "commander-2.17.1.tgz";
        url  = "https://registry.yarnpkg.com/commander/-/commander-2.17.1.tgz";
        sha1 = "bd77ab7de6de94205ceacc72f1716d29f20a77bf";
      };
    }

    {
      name = "commondir-1.0.1.tgz";
      path = fetchurl {
        name = "commondir-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/commondir/-/commondir-1.0.1.tgz";
        sha1 = "ddd800da0c66127393cca5950ea968a3aaf1253b";
      };
    }

    {
      name = "component-emitter-1.2.1.tgz";
      path = fetchurl {
        name = "component-emitter-1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/component-emitter/-/component-emitter-1.2.1.tgz";
        sha1 = "137918d6d78283f7df7a6b7c5a63e140e69425e6";
      };
    }

    {
      name = "compressible-2.0.15.tgz";
      path = fetchurl {
        name = "compressible-2.0.15.tgz";
        url  = "https://registry.yarnpkg.com/compressible/-/compressible-2.0.15.tgz";
        sha1 = "857a9ab0a7e5a07d8d837ed43fe2defff64fe212";
      };
    }

    {
      name = "compression-1.7.3.tgz";
      path = fetchurl {
        name = "compression-1.7.3.tgz";
        url  = "https://registry.yarnpkg.com/compression/-/compression-1.7.3.tgz";
        sha1 = "27e0e176aaf260f7f2c2813c3e440adb9f1993db";
      };
    }

    {
      name = "concat-map-0.0.1.tgz";
      path = fetchurl {
        name = "concat-map-0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/concat-map/-/concat-map-0.0.1.tgz";
        sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
      };
    }

    {
      name = "concat-stream-1.6.2.tgz";
      path = fetchurl {
        name = "concat-stream-1.6.2.tgz";
        url  = "https://registry.yarnpkg.com/concat-stream/-/concat-stream-1.6.2.tgz";
        sha1 = "904bdf194cd3122fc675c77fc4ac3d4ff0fd1a34";
      };
    }

    {
      name = "concat-stream-1.5.2.tgz";
      path = fetchurl {
        name = "concat-stream-1.5.2.tgz";
        url  = "https://registry.yarnpkg.com/concat-stream/-/concat-stream-1.5.2.tgz";
        sha1 = "708978624d856af41a5a741defdd261da752c266";
      };
    }

    {
      name = "connect-history-api-fallback-1.5.0.tgz";
      path = fetchurl {
        name = "connect-history-api-fallback-1.5.0.tgz";
        url  = "https://registry.yarnpkg.com/connect-history-api-fallback/-/connect-history-api-fallback-1.5.0.tgz";
        sha1 = "b06873934bc5e344fef611a196a6faae0aee015a";
      };
    }

    {
      name = "console-browserify-1.1.0.tgz";
      path = fetchurl {
        name = "console-browserify-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/console-browserify/-/console-browserify-1.1.0.tgz";
        sha1 = "f0241c45730a9fc6323b206dbf38edc741d0bb10";
      };
    }

    {
      name = "console-control-strings-1.1.0.tgz";
      path = fetchurl {
        name = "console-control-strings-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/console-control-strings/-/console-control-strings-1.1.0.tgz";
        sha1 = "3d7cf4464db6446ea644bf4b39507f9851008e8e";
      };
    }

    {
      name = "constants-browserify-1.0.0.tgz";
      path = fetchurl {
        name = "constants-browserify-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/constants-browserify/-/constants-browserify-1.0.0.tgz";
        sha1 = "c20b96d8c617748aaf1c16021760cd27fcb8cb75";
      };
    }

    {
      name = "content-disposition-0.5.2.tgz";
      path = fetchurl {
        name = "content-disposition-0.5.2.tgz";
        url  = "https://registry.yarnpkg.com/content-disposition/-/content-disposition-0.5.2.tgz";
        sha1 = "0cf68bb9ddf5f2be7961c3a85178cb85dba78cb4";
      };
    }

    {
      name = "content-type-1.0.4.tgz";
      path = fetchurl {
        name = "content-type-1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/content-type/-/content-type-1.0.4.tgz";
        sha1 = "e138cc75e040c727b1966fe5e5f8c9aee256fe3b";
      };
    }

    {
      name = "convert-source-map-1.6.0.tgz";
      path = fetchurl {
        name = "convert-source-map-1.6.0.tgz";
        url  = "https://registry.yarnpkg.com/convert-source-map/-/convert-source-map-1.6.0.tgz";
        sha1 = "51b537a8c43e0f04dec1993bffcdd504e758ac20";
      };
    }

    {
      name = "convert-source-map-1.1.3.tgz";
      path = fetchurl {
        name = "convert-source-map-1.1.3.tgz";
        url  = "http://registry.npmjs.org/convert-source-map/-/convert-source-map-1.1.3.tgz";
        sha1 = "4829c877e9fe49b3161f3bf3673888e204699860";
      };
    }

    {
      name = "cookie-signature-1.0.6.tgz";
      path = fetchurl {
        name = "cookie-signature-1.0.6.tgz";
        url  = "https://registry.yarnpkg.com/cookie-signature/-/cookie-signature-1.0.6.tgz";
        sha1 = "e303a882b342cc3ee8ca513a79999734dab3ae2c";
      };
    }

    {
      name = "cookie-0.3.1.tgz";
      path = fetchurl {
        name = "cookie-0.3.1.tgz";
        url  = "https://registry.yarnpkg.com/cookie/-/cookie-0.3.1.tgz";
        sha1 = "e7e0a1f9ef43b4c8ba925c5c5a96e806d16873bb";
      };
    }

    {
      name = "copy-concurrently-1.0.5.tgz";
      path = fetchurl {
        name = "copy-concurrently-1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/copy-concurrently/-/copy-concurrently-1.0.5.tgz";
        sha1 = "92297398cae34937fcafd6ec8139c18051f0b5e0";
      };
    }

    {
      name = "copy-descriptor-0.1.1.tgz";
      path = fetchurl {
        name = "copy-descriptor-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/copy-descriptor/-/copy-descriptor-0.1.1.tgz";
        sha1 = "676f6eb3c39997c2ee1ac3a924fd6124748f578d";
      };
    }

    {
      name = "core-util-is-1.0.2.tgz";
      path = fetchurl {
        name = "core-util-is-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/core-util-is/-/core-util-is-1.0.2.tgz";
        sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
      };
    }

    {
      name = "create-ecdh-4.0.3.tgz";
      path = fetchurl {
        name = "create-ecdh-4.0.3.tgz";
        url  = "https://registry.yarnpkg.com/create-ecdh/-/create-ecdh-4.0.3.tgz";
        sha1 = "c9111b6f33045c4697f144787f9254cdc77c45ff";
      };
    }

    {
      name = "create-hash-1.2.0.tgz";
      path = fetchurl {
        name = "create-hash-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/create-hash/-/create-hash-1.2.0.tgz";
        sha1 = "889078af11a63756bcfb59bd221996be3a9ef196";
      };
    }

    {
      name = "create-hmac-1.1.7.tgz";
      path = fetchurl {
        name = "create-hmac-1.1.7.tgz";
        url  = "https://registry.yarnpkg.com/create-hmac/-/create-hmac-1.1.7.tgz";
        sha1 = "69170c78b3ab957147b2b8b04572e47ead2243ff";
      };
    }

    {
      name = "cross-spawn-3.0.1.tgz";
      path = fetchurl {
        name = "cross-spawn-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-3.0.1.tgz";
        sha1 = "1256037ecb9f0c5f79e3d6ef135e30770184b982";
      };
    }

    {
      name = "cross-spawn-6.0.5.tgz";
      path = fetchurl {
        name = "cross-spawn-6.0.5.tgz";
        url  = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-6.0.5.tgz";
        sha1 = "4a5ec7c64dfae22c3a14124dbacdee846d80cbc4";
      };
    }

    {
      name = "crypto-browserify-3.12.0.tgz";
      path = fetchurl {
        name = "crypto-browserify-3.12.0.tgz";
        url  = "https://registry.yarnpkg.com/crypto-browserify/-/crypto-browserify-3.12.0.tgz";
        sha1 = "396cf9f3137f03e4b8e532c58f698254e00f80ec";
      };
    }

    {
      name = "css-loader-1.0.1.tgz";
      path = fetchurl {
        name = "css-loader-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/css-loader/-/css-loader-1.0.1.tgz";
        sha1 = "6885bb5233b35ec47b006057da01cc640b6b79fe";
      };
    }

    {
      name = "css-select-1.2.0.tgz";
      path = fetchurl {
        name = "css-select-1.2.0.tgz";
        url  = "http://registry.npmjs.org/css-select/-/css-select-1.2.0.tgz";
        sha1 = "2b3a110539c5355f1cd8d314623e870b121ec858";
      };
    }

    {
      name = "css-selector-tokenizer-0.7.1.tgz";
      path = fetchurl {
        name = "css-selector-tokenizer-0.7.1.tgz";
        url  = "https://registry.yarnpkg.com/css-selector-tokenizer/-/css-selector-tokenizer-0.7.1.tgz";
        sha1 = "a177271a8bca5019172f4f891fc6eed9cbf68d5d";
      };
    }

    {
      name = "css-what-2.1.2.tgz";
      path = fetchurl {
        name = "css-what-2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/css-what/-/css-what-2.1.2.tgz";
        sha1 = "c0876d9d0480927d7d4920dcd72af3595649554d";
      };
    }

    {
      name = "cssesc-0.1.0.tgz";
      path = fetchurl {
        name = "cssesc-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/cssesc/-/cssesc-0.1.0.tgz";
        sha1 = "c814903e45623371a0477b40109aaafbeeaddbb4";
      };
    }

    {
      name = "currently-unhandled-0.4.1.tgz";
      path = fetchurl {
        name = "currently-unhandled-0.4.1.tgz";
        url  = "https://registry.yarnpkg.com/currently-unhandled/-/currently-unhandled-0.4.1.tgz";
        sha1 = "988df33feab191ef799a61369dd76c17adf957ea";
      };
    }

    {
      name = "cyclist-0.2.2.tgz";
      path = fetchurl {
        name = "cyclist-0.2.2.tgz";
        url  = "https://registry.yarnpkg.com/cyclist/-/cyclist-0.2.2.tgz";
        sha1 = "1b33792e11e914a2fd6d6ed6447464444e5fa640";
      };
    }

    {
      name = "dargs-5.1.0.tgz";
      path = fetchurl {
        name = "dargs-5.1.0.tgz";
        url  = "https://registry.yarnpkg.com/dargs/-/dargs-5.1.0.tgz";
        sha1 = "ec7ea50c78564cd36c9d5ec18f66329fade27829";
      };
    }

    {
      name = "dashdash-1.14.1.tgz";
      path = fetchurl {
        name = "dashdash-1.14.1.tgz";
        url  = "https://registry.yarnpkg.com/dashdash/-/dashdash-1.14.1.tgz";
        sha1 = "853cfa0f7cbe2fed5de20326b8dd581035f6e2f0";
      };
    }

    {
      name = "date-now-0.1.4.tgz";
      path = fetchurl {
        name = "date-now-0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/date-now/-/date-now-0.1.4.tgz";
        sha1 = "eaf439fd4d4848ad74e5cc7dbef200672b9e345b";
      };
    }

    {
      name = "debug-2.6.9.tgz";
      path = fetchurl {
        name = "debug-2.6.9.tgz";
        url  = "https://registry.yarnpkg.com/debug/-/debug-2.6.9.tgz";
        sha1 = "5d128515df134ff327e90a4c93f4e077a536341f";
      };
    }

    {
      name = "debug-3.1.0.tgz";
      path = fetchurl {
        name = "debug-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/debug/-/debug-3.1.0.tgz";
        sha1 = "5bb5a0672628b64149566ba16819e61518c67261";
      };
    }

    {
      name = "debug-3.2.6.tgz";
      path = fetchurl {
        name = "debug-3.2.6.tgz";
        url  = "https://registry.yarnpkg.com/debug/-/debug-3.2.6.tgz";
        sha1 = "e83d17de16d8a7efb7717edbe5fb10135eee629b";
      };
    }

    {
      name = "decamelize-1.2.0.tgz";
      path = fetchurl {
        name = "decamelize-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/decamelize/-/decamelize-1.2.0.tgz";
        sha1 = "f6534d15148269b20352e7bee26f501f9a191290";
      };
    }

    {
      name = "decamelize-2.0.0.tgz";
      path = fetchurl {
        name = "decamelize-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/decamelize/-/decamelize-2.0.0.tgz";
        sha1 = "656d7bbc8094c4c788ea53c5840908c9c7d063c7";
      };
    }

    {
      name = "decode-uri-component-0.2.0.tgz";
      path = fetchurl {
        name = "decode-uri-component-0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/decode-uri-component/-/decode-uri-component-0.2.0.tgz";
        sha1 = "eb3913333458775cb84cd1a1fae062106bb87545";
      };
    }

    {
      name = "deep-equal-1.0.1.tgz";
      path = fetchurl {
        name = "deep-equal-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/deep-equal/-/deep-equal-1.0.1.tgz";
        sha1 = "f5d260292b660e084eff4cdbc9f08ad3247448b5";
      };
    }

    {
      name = "deep-extend-0.6.0.tgz";
      path = fetchurl {
        name = "deep-extend-0.6.0.tgz";
        url  = "https://registry.yarnpkg.com/deep-extend/-/deep-extend-0.6.0.tgz";
        sha1 = "c4fa7c95404a17a9c3e8ca7e1537312b736330ac";
      };
    }

    {
      name = "default-gateway-2.7.2.tgz";
      path = fetchurl {
        name = "default-gateway-2.7.2.tgz";
        url  = "https://registry.yarnpkg.com/default-gateway/-/default-gateway-2.7.2.tgz";
        sha1 = "b7ef339e5e024b045467af403d50348db4642d0f";
      };
    }

    {
      name = "define-properties-1.1.3.tgz";
      path = fetchurl {
        name = "define-properties-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/define-properties/-/define-properties-1.1.3.tgz";
        sha1 = "cf88da6cbee26fe6db7094f61d870cbd84cee9f1";
      };
    }

    {
      name = "define-property-0.2.5.tgz";
      path = fetchurl {
        name = "define-property-0.2.5.tgz";
        url  = "https://registry.yarnpkg.com/define-property/-/define-property-0.2.5.tgz";
        sha1 = "c35b1ef918ec3c990f9a5bc57be04aacec5c8116";
      };
    }

    {
      name = "define-property-1.0.0.tgz";
      path = fetchurl {
        name = "define-property-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/define-property/-/define-property-1.0.0.tgz";
        sha1 = "769ebaaf3f4a63aad3af9e8d304c9bbe79bfb0e6";
      };
    }

    {
      name = "define-property-2.0.2.tgz";
      path = fetchurl {
        name = "define-property-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/define-property/-/define-property-2.0.2.tgz";
        sha1 = "d459689e8d654ba77e02a817f8710d702cb16e9d";
      };
    }

    {
      name = "defined-1.0.0.tgz";
      path = fetchurl {
        name = "defined-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/defined/-/defined-1.0.0.tgz";
        sha1 = "c98d9bcef75674188e110969151199e39b1fa693";
      };
    }

    {
      name = "del-3.0.0.tgz";
      path = fetchurl {
        name = "del-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/del/-/del-3.0.0.tgz";
        sha1 = "53ecf699ffcbcb39637691ab13baf160819766e5";
      };
    }

    {
      name = "delayed-stream-1.0.0.tgz";
      path = fetchurl {
        name = "delayed-stream-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/delayed-stream/-/delayed-stream-1.0.0.tgz";
        sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
      };
    }

    {
      name = "delegates-1.0.0.tgz";
      path = fetchurl {
        name = "delegates-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/delegates/-/delegates-1.0.0.tgz";
        sha1 = "84c6e159b81904fdca59a0ef44cd870d31250f9a";
      };
    }

    {
      name = "depd-1.1.2.tgz";
      path = fetchurl {
        name = "depd-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/depd/-/depd-1.1.2.tgz";
        sha1 = "9bcd52e14c097763e749b274c4346ed2e560b5a9";
      };
    }

    {
      name = "deps-sort-2.0.0.tgz";
      path = fetchurl {
        name = "deps-sort-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/deps-sort/-/deps-sort-2.0.0.tgz";
        sha1 = "091724902e84658260eb910748cccd1af6e21fb5";
      };
    }

    {
      name = "des.js-1.0.0.tgz";
      path = fetchurl {
        name = "des.js-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/des.js/-/des.js-1.0.0.tgz";
        sha1 = "c074d2e2aa6a8a9a07dbd61f9a15c2cd83ec8ecc";
      };
    }

    {
      name = "destroy-1.0.4.tgz";
      path = fetchurl {
        name = "destroy-1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/destroy/-/destroy-1.0.4.tgz";
        sha1 = "978857442c44749e4206613e37946205826abd80";
      };
    }

    {
      name = "detect-libc-1.0.3.tgz";
      path = fetchurl {
        name = "detect-libc-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/detect-libc/-/detect-libc-1.0.3.tgz";
        sha1 = "fa137c4bd698edf55cd5cd02ac559f91a4c4ba9b";
      };
    }

    {
      name = "detect-node-2.0.4.tgz";
      path = fetchurl {
        name = "detect-node-2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/detect-node/-/detect-node-2.0.4.tgz";
        sha1 = "014ee8f8f669c5c58023da64b8179c083a28c46c";
      };
    }

    {
      name = "detective-4.7.1.tgz";
      path = fetchurl {
        name = "detective-4.7.1.tgz";
        url  = "https://registry.yarnpkg.com/detective/-/detective-4.7.1.tgz";
        sha1 = "0eca7314338442febb6d65da54c10bb1c82b246e";
      };
    }

    {
      name = "diffie-hellman-5.0.3.tgz";
      path = fetchurl {
        name = "diffie-hellman-5.0.3.tgz";
        url  = "https://registry.yarnpkg.com/diffie-hellman/-/diffie-hellman-5.0.3.tgz";
        sha1 = "40e8ee98f55a2149607146921c63e1ae5f3d2875";
      };
    }

    {
      name = "dns-equal-1.0.0.tgz";
      path = fetchurl {
        name = "dns-equal-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/dns-equal/-/dns-equal-1.0.0.tgz";
        sha1 = "b39e7f1da6eb0a75ba9c17324b34753c47e0654d";
      };
    }

    {
      name = "dns-packet-1.3.1.tgz";
      path = fetchurl {
        name = "dns-packet-1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/dns-packet/-/dns-packet-1.3.1.tgz";
        sha1 = "12aa426981075be500b910eedcd0b47dd7deda5a";
      };
    }

    {
      name = "dns-txt-2.0.2.tgz";
      path = fetchurl {
        name = "dns-txt-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/dns-txt/-/dns-txt-2.0.2.tgz";
        sha1 = "b91d806f5d27188e4ab3e7d107d881a1cc4642b6";
      };
    }

    {
      name = "dom-converter-0.2.0.tgz";
      path = fetchurl {
        name = "dom-converter-0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/dom-converter/-/dom-converter-0.2.0.tgz";
        sha1 = "6721a9daee2e293682955b6afe416771627bb768";
      };
    }

    {
      name = "dom-serializer-0.1.0.tgz";
      path = fetchurl {
        name = "dom-serializer-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/dom-serializer/-/dom-serializer-0.1.0.tgz";
        sha1 = "073c697546ce0780ce23be4a28e293e40bc30c82";
      };
    }

    {
      name = "domain-browser-1.2.0.tgz";
      path = fetchurl {
        name = "domain-browser-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/domain-browser/-/domain-browser-1.2.0.tgz";
        sha1 = "3d31f50191a6749dd1375a7f522e823d42e54eda";
      };
    }

    {
      name = "domain-browser-1.1.7.tgz";
      path = fetchurl {
        name = "domain-browser-1.1.7.tgz";
        url  = "https://registry.yarnpkg.com/domain-browser/-/domain-browser-1.1.7.tgz";
        sha1 = "867aa4b093faa05f1de08c06f4d7b21fdf8698bc";
      };
    }

    {
      name = "domelementtype-1.2.1.tgz";
      path = fetchurl {
        name = "domelementtype-1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/domelementtype/-/domelementtype-1.2.1.tgz";
        sha1 = "578558ef23befac043a1abb0db07635509393479";
      };
    }

    {
      name = "domelementtype-1.1.3.tgz";
      path = fetchurl {
        name = "domelementtype-1.1.3.tgz";
        url  = "http://registry.npmjs.org/domelementtype/-/domelementtype-1.1.3.tgz";
        sha1 = "bd28773e2642881aec51544924299c5cd822185b";
      };
    }

    {
      name = "domhandler-2.1.0.tgz";
      path = fetchurl {
        name = "domhandler-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/domhandler/-/domhandler-2.1.0.tgz";
        sha1 = "d2646f5e57f6c3bab11cf6cb05d3c0acf7412594";
      };
    }

    {
      name = "domutils-1.1.6.tgz";
      path = fetchurl {
        name = "domutils-1.1.6.tgz";
        url  = "https://registry.yarnpkg.com/domutils/-/domutils-1.1.6.tgz";
        sha1 = "bddc3de099b9a2efacc51c623f28f416ecc57485";
      };
    }

    {
      name = "domutils-1.5.1.tgz";
      path = fetchurl {
        name = "domutils-1.5.1.tgz";
        url  = "https://registry.yarnpkg.com/domutils/-/domutils-1.5.1.tgz";
        sha1 = "dcd8488a26f563d61079e48c9f7b7e32373682cf";
      };
    }

    {
      name = "duplexer2-0.1.4.tgz";
      path = fetchurl {
        name = "duplexer2-0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/duplexer2/-/duplexer2-0.1.4.tgz";
        sha1 = "8b12dab878c0d69e3e7891051662a32fc6bddcc1";
      };
    }

    {
      name = "duplexify-3.6.1.tgz";
      path = fetchurl {
        name = "duplexify-3.6.1.tgz";
        url  = "https://registry.yarnpkg.com/duplexify/-/duplexify-3.6.1.tgz";
        sha1 = "b1a7a29c4abfd639585efaecce80d666b1e34125";
      };
    }

    {
      name = "ecc-jsbn-0.1.2.tgz";
      path = fetchurl {
        name = "ecc-jsbn-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/ecc-jsbn/-/ecc-jsbn-0.1.2.tgz";
        sha1 = "3a83a904e54353287874c564b7549386849a98c9";
      };
    }

    {
      name = "ee-first-1.1.1.tgz";
      path = fetchurl {
        name = "ee-first-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ee-first/-/ee-first-1.1.1.tgz";
        sha1 = "590c61156b0ae2f4f0255732a158b266bc56b21d";
      };
    }

    {
      name = "elliptic-6.4.1.tgz";
      path = fetchurl {
        name = "elliptic-6.4.1.tgz";
        url  = "https://registry.yarnpkg.com/elliptic/-/elliptic-6.4.1.tgz";
        sha1 = "c2d0b7776911b86722c632c3c06c60f2f819939a";
      };
    }

    {
      name = "emojis-list-2.1.0.tgz";
      path = fetchurl {
        name = "emojis-list-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/emojis-list/-/emojis-list-2.1.0.tgz";
        sha1 = "4daa4d9db00f9819880c79fa457ae5b09a1fd389";
      };
    }

    {
      name = "encodeurl-1.0.2.tgz";
      path = fetchurl {
        name = "encodeurl-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/encodeurl/-/encodeurl-1.0.2.tgz";
        sha1 = "ad3ff4c86ec2d029322f5a02c3a9a606c95b3f59";
      };
    }

    {
      name = "end-of-stream-1.4.1.tgz";
      path = fetchurl {
        name = "end-of-stream-1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/end-of-stream/-/end-of-stream-1.4.1.tgz";
        sha1 = "ed29634d19baba463b6ce6b80a37213eab71ec43";
      };
    }

    {
      name = "enhanced-resolve-4.1.0.tgz";
      path = fetchurl {
        name = "enhanced-resolve-4.1.0.tgz";
        url  = "https://registry.yarnpkg.com/enhanced-resolve/-/enhanced-resolve-4.1.0.tgz";
        sha1 = "41c7e0bfdfe74ac1ffe1e57ad6a5c6c9f3742a7f";
      };
    }

    {
      name = "entities-1.1.2.tgz";
      path = fetchurl {
        name = "entities-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/entities/-/entities-1.1.2.tgz";
        sha1 = "bdfa735299664dfafd34529ed4f8522a275fea56";
      };
    }

    {
      name = "err-code-1.1.2.tgz";
      path = fetchurl {
        name = "err-code-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/err-code/-/err-code-1.1.2.tgz";
        sha1 = "06e0116d3028f6aef4806849eb0ea6a748ae6960";
      };
    }

    {
      name = "errno-0.1.7.tgz";
      path = fetchurl {
        name = "errno-0.1.7.tgz";
        url  = "https://registry.yarnpkg.com/errno/-/errno-0.1.7.tgz";
        sha1 = "4684d71779ad39af177e3f007996f7c67c852618";
      };
    }

    {
      name = "error-ex-1.3.2.tgz";
      path = fetchurl {
        name = "error-ex-1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/error-ex/-/error-ex-1.3.2.tgz";
        sha1 = "b4ac40648107fdcdcfae242f428bea8a14d4f1bf";
      };
    }

    {
      name = "es-abstract-1.12.0.tgz";
      path = fetchurl {
        name = "es-abstract-1.12.0.tgz";
        url  = "https://registry.yarnpkg.com/es-abstract/-/es-abstract-1.12.0.tgz";
        sha1 = "9dbbdd27c6856f0001421ca18782d786bf8a6165";
      };
    }

    {
      name = "es-to-primitive-1.2.0.tgz";
      path = fetchurl {
        name = "es-to-primitive-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/es-to-primitive/-/es-to-primitive-1.2.0.tgz";
        sha1 = "edf72478033456e8dda8ef09e00ad9650707f377";
      };
    }

    {
      name = "es6-promise-3.3.1.tgz";
      path = fetchurl {
        name = "es6-promise-3.3.1.tgz";
        url  = "http://registry.npmjs.org/es6-promise/-/es6-promise-3.3.1.tgz";
        sha1 = "a08cdde84ccdbf34d027a1451bc91d4bcd28a613";
      };
    }

    {
      name = "escape-html-1.0.3.tgz";
      path = fetchurl {
        name = "escape-html-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/escape-html/-/escape-html-1.0.3.tgz";
        sha1 = "0258eae4d3d0c0974de1c169188ef0051d1d1988";
      };
    }

    {
      name = "escape-string-regexp-1.0.5.tgz";
      path = fetchurl {
        name = "escape-string-regexp-1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
        sha1 = "1b61c0562190a8dff6ae3bb2cf0200ca130b86d4";
      };
    }

    {
      name = "eslint-scope-4.0.0.tgz";
      path = fetchurl {
        name = "eslint-scope-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/eslint-scope/-/eslint-scope-4.0.0.tgz";
        sha1 = "50bf3071e9338bcdc43331794a0cb533f0136172";
      };
    }

    {
      name = "esrecurse-4.2.1.tgz";
      path = fetchurl {
        name = "esrecurse-4.2.1.tgz";
        url  = "https://registry.yarnpkg.com/esrecurse/-/esrecurse-4.2.1.tgz";
        sha1 = "007a3b9fdbc2b3bb87e4879ea19c92fdbd3942cf";
      };
    }

    {
      name = "estraverse-4.2.0.tgz";
      path = fetchurl {
        name = "estraverse-4.2.0.tgz";
        url  = "https://registry.yarnpkg.com/estraverse/-/estraverse-4.2.0.tgz";
        sha1 = "0dee3fed31fcd469618ce7342099fc1afa0bdb13";
      };
    }

    {
      name = "esutils-2.0.2.tgz";
      path = fetchurl {
        name = "esutils-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/esutils/-/esutils-2.0.2.tgz";
        sha1 = "0abf4f1caa5bcb1f7a9d8acc6dea4faaa04bac9b";
      };
    }

    {
      name = "etag-1.8.1.tgz";
      path = fetchurl {
        name = "etag-1.8.1.tgz";
        url  = "https://registry.yarnpkg.com/etag/-/etag-1.8.1.tgz";
        sha1 = "41ae2eeb65efa62268aebfea83ac7d79299b0887";
      };
    }

    {
      name = "eventemitter3-3.1.0.tgz";
      path = fetchurl {
        name = "eventemitter3-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/eventemitter3/-/eventemitter3-3.1.0.tgz";
        sha1 = "090b4d6cdbd645ed10bf750d4b5407942d7ba163";
      };
    }

    {
      name = "events-1.1.1.tgz";
      path = fetchurl {
        name = "events-1.1.1.tgz";
        url  = "http://registry.npmjs.org/events/-/events-1.1.1.tgz";
        sha1 = "9ebdb7635ad099c70dcc4c2a1f5004288e8bd924";
      };
    }

    {
      name = "eventsource-1.0.7.tgz";
      path = fetchurl {
        name = "eventsource-1.0.7.tgz";
        url  = "https://registry.yarnpkg.com/eventsource/-/eventsource-1.0.7.tgz";
        sha1 = "8fbc72c93fcd34088090bc0a4e64f4b5cee6d8d0";
      };
    }

    {
      name = "evp_bytestokey-1.0.3.tgz";
      path = fetchurl {
        name = "evp_bytestokey-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/evp_bytestokey/-/evp_bytestokey-1.0.3.tgz";
        sha1 = "7fcbdb198dc71959432efe13842684e0525acb02";
      };
    }

    {
      name = "execa-0.10.0.tgz";
      path = fetchurl {
        name = "execa-0.10.0.tgz";
        url  = "https://registry.yarnpkg.com/execa/-/execa-0.10.0.tgz";
        sha1 = "ff456a8f53f90f8eccc71a96d11bdfc7f082cb50";
      };
    }

    {
      name = "expand-brackets-2.1.4.tgz";
      path = fetchurl {
        name = "expand-brackets-2.1.4.tgz";
        url  = "https://registry.yarnpkg.com/expand-brackets/-/expand-brackets-2.1.4.tgz";
        sha1 = "b77735e315ce30f6b6eff0f83b04151a22449622";
      };
    }

    {
      name = "express-4.16.4.tgz";
      path = fetchurl {
        name = "express-4.16.4.tgz";
        url  = "https://registry.yarnpkg.com/express/-/express-4.16.4.tgz";
        sha1 = "fddef61926109e24c515ea97fd2f1bdbf62df12e";
      };
    }

    {
      name = "extend-shallow-2.0.1.tgz";
      path = fetchurl {
        name = "extend-shallow-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/extend-shallow/-/extend-shallow-2.0.1.tgz";
        sha1 = "51af7d614ad9a9f610ea1bafbb989d6b1c56890f";
      };
    }

    {
      name = "extend-shallow-3.0.2.tgz";
      path = fetchurl {
        name = "extend-shallow-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/extend-shallow/-/extend-shallow-3.0.2.tgz";
        sha1 = "26a71aaf073b39fb2127172746131c2704028db8";
      };
    }

    {
      name = "extend-3.0.2.tgz";
      path = fetchurl {
        name = "extend-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/extend/-/extend-3.0.2.tgz";
        sha1 = "f8b1136b4071fbd8eb140aff858b1019ec2915fa";
      };
    }

    {
      name = "extglob-2.0.4.tgz";
      path = fetchurl {
        name = "extglob-2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/extglob/-/extglob-2.0.4.tgz";
        sha1 = "ad00fe4dc612a9232e8718711dc5cb5ab0285543";
      };
    }

    {
      name = "extract-text-webpack-plugin-3.0.2.tgz";
      path = fetchurl {
        name = "extract-text-webpack-plugin-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/extract-text-webpack-plugin/-/extract-text-webpack-plugin-3.0.2.tgz";
        sha1 = "5f043eaa02f9750a9258b78c0a6e0dc1408fb2f7";
      };
    }

    {
      name = "extsprintf-1.3.0.tgz";
      path = fetchurl {
        name = "extsprintf-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/extsprintf/-/extsprintf-1.3.0.tgz";
        sha1 = "96918440e3041a7a414f8c52e3c574eb3c3e1e05";
      };
    }

    {
      name = "extsprintf-1.4.0.tgz";
      path = fetchurl {
        name = "extsprintf-1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/extsprintf/-/extsprintf-1.4.0.tgz";
        sha1 = "e2689f8f356fad62cca65a3a91c5df5f9551692f";
      };
    }

    {
      name = "fast-deep-equal-1.1.0.tgz";
      path = fetchurl {
        name = "fast-deep-equal-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/fast-deep-equal/-/fast-deep-equal-1.1.0.tgz";
        sha1 = "c053477817c86b51daa853c81e059b733d023614";
      };
    }

    {
      name = "fast-deep-equal-2.0.1.tgz";
      path = fetchurl {
        name = "fast-deep-equal-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/fast-deep-equal/-/fast-deep-equal-2.0.1.tgz";
        sha1 = "7b05218ddf9667bf7f370bf7fdb2cb15fdd0aa49";
      };
    }

    {
      name = "fast-json-stable-stringify-2.0.0.tgz";
      path = fetchurl {
        name = "fast-json-stable-stringify-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fast-json-stable-stringify/-/fast-json-stable-stringify-2.0.0.tgz";
        sha1 = "d5142c0caee6b1189f87d3a76111064f86c8bbf2";
      };
    }

    {
      name = "fastparse-1.1.2.tgz";
      path = fetchurl {
        name = "fastparse-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/fastparse/-/fastparse-1.1.2.tgz";
        sha1 = "91728c5a5942eced8531283c79441ee4122c35a9";
      };
    }

    {
      name = "faye-websocket-0.10.0.tgz";
      path = fetchurl {
        name = "faye-websocket-0.10.0.tgz";
        url  = "https://registry.yarnpkg.com/faye-websocket/-/faye-websocket-0.10.0.tgz";
        sha1 = "4e492f8d04dfb6f89003507f6edbf2d501e7c6f4";
      };
    }

    {
      name = "faye-websocket-0.11.1.tgz";
      path = fetchurl {
        name = "faye-websocket-0.11.1.tgz";
        url  = "https://registry.yarnpkg.com/faye-websocket/-/faye-websocket-0.11.1.tgz";
        sha1 = "f0efe18c4f56e4f40afc7e06c719fd5ee6188f38";
      };
    }

    {
      name = "figgy-pudding-3.5.1.tgz";
      path = fetchurl {
        name = "figgy-pudding-3.5.1.tgz";
        url  = "https://registry.yarnpkg.com/figgy-pudding/-/figgy-pudding-3.5.1.tgz";
        sha1 = "862470112901c727a0e495a80744bd5baa1d6790";
      };
    }

    {
      name = "file-loader-2.0.0.tgz";
      path = fetchurl {
        name = "file-loader-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/file-loader/-/file-loader-2.0.0.tgz";
        sha1 = "39749c82f020b9e85901dcff98e8004e6401cfde";
      };
    }

    {
      name = "fill-range-4.0.0.tgz";
      path = fetchurl {
        name = "fill-range-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fill-range/-/fill-range-4.0.0.tgz";
        sha1 = "d544811d428f98eb06a63dc402d2403c328c38f7";
      };
    }

    {
      name = "finalhandler-1.1.1.tgz";
      path = fetchurl {
        name = "finalhandler-1.1.1.tgz";
        url  = "http://registry.npmjs.org/finalhandler/-/finalhandler-1.1.1.tgz";
        sha1 = "eebf4ed840079c83f4249038c9d703008301b105";
      };
    }

    {
      name = "find-cache-dir-2.0.0.tgz";
      path = fetchurl {
        name = "find-cache-dir-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/find-cache-dir/-/find-cache-dir-2.0.0.tgz";
        sha1 = "4c1faed59f45184530fb9d7fa123a4d04a98472d";
      };
    }

    {
      name = "find-up-1.1.2.tgz";
      path = fetchurl {
        name = "find-up-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/find-up/-/find-up-1.1.2.tgz";
        sha1 = "6b2e9822b1a2ce0a60ab64d610eccad53cb24d0f";
      };
    }

    {
      name = "find-up-3.0.0.tgz";
      path = fetchurl {
        name = "find-up-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/find-up/-/find-up-3.0.0.tgz";
        sha1 = "49169f1d7993430646da61ecc5ae355c21c97b73";
      };
    }

    {
      name = "flush-write-stream-1.0.3.tgz";
      path = fetchurl {
        name = "flush-write-stream-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/flush-write-stream/-/flush-write-stream-1.0.3.tgz";
        sha1 = "c5d586ef38af6097650b49bc41b55fabb19f35bd";
      };
    }

    {
      name = "follow-redirects-1.5.9.tgz";
      path = fetchurl {
        name = "follow-redirects-1.5.9.tgz";
        url  = "https://registry.yarnpkg.com/follow-redirects/-/follow-redirects-1.5.9.tgz";
        sha1 = "c9ed9d748b814a39535716e531b9196a845d89c6";
      };
    }

    {
      name = "font-awesome-4.7.0.tgz";
      path = fetchurl {
        name = "font-awesome-4.7.0.tgz";
        url  = "https://registry.yarnpkg.com/font-awesome/-/font-awesome-4.7.0.tgz";
        sha1 = "8fa8cf0411a1a31afd07b06d2902bb9fc815a133";
      };
    }

    {
      name = "for-in-0.1.8.tgz";
      path = fetchurl {
        name = "for-in-0.1.8.tgz";
        url  = "https://registry.yarnpkg.com/for-in/-/for-in-0.1.8.tgz";
        sha1 = "d8773908e31256109952b1fdb9b3fa867d2775e1";
      };
    }

    {
      name = "for-in-1.0.2.tgz";
      path = fetchurl {
        name = "for-in-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/for-in/-/for-in-1.0.2.tgz";
        sha1 = "81068d295a8142ec0ac726c6e2200c30fb6d5e80";
      };
    }

    {
      name = "for-own-1.0.0.tgz";
      path = fetchurl {
        name = "for-own-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/for-own/-/for-own-1.0.0.tgz";
        sha1 = "c63332f415cedc4b04dbfe70cf836494c53cb44b";
      };
    }

    {
      name = "forever-agent-0.6.1.tgz";
      path = fetchurl {
        name = "forever-agent-0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/forever-agent/-/forever-agent-0.6.1.tgz";
        sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
      };
    }

    {
      name = "form-data-2.3.3.tgz";
      path = fetchurl {
        name = "form-data-2.3.3.tgz";
        url  = "https://registry.yarnpkg.com/form-data/-/form-data-2.3.3.tgz";
        sha1 = "dcce52c05f644f298c6a7ab936bd724ceffbf3a6";
      };
    }

    {
      name = "forwarded-0.1.2.tgz";
      path = fetchurl {
        name = "forwarded-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/forwarded/-/forwarded-0.1.2.tgz";
        sha1 = "98c23dab1175657b8c0573e8ceccd91b0ff18c84";
      };
    }

    {
      name = "fragment-cache-0.2.1.tgz";
      path = fetchurl {
        name = "fragment-cache-0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/fragment-cache/-/fragment-cache-0.2.1.tgz";
        sha1 = "4290fad27f13e89be7f33799c6bc5a0abfff0d19";
      };
    }

    {
      name = "fresh-0.5.2.tgz";
      path = fetchurl {
        name = "fresh-0.5.2.tgz";
        url  = "https://registry.yarnpkg.com/fresh/-/fresh-0.5.2.tgz";
        sha1 = "3d8cadd90d976569fa835ab1f8e4b23a105605a7";
      };
    }

    {
      name = "from2-2.3.0.tgz";
      path = fetchurl {
        name = "from2-2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/from2/-/from2-2.3.0.tgz";
        sha1 = "8bfb5502bde4a4d36cfdeea007fcca21d7e382af";
      };
    }

    {
      name = "fs-minipass-1.2.5.tgz";
      path = fetchurl {
        name = "fs-minipass-1.2.5.tgz";
        url  = "https://registry.yarnpkg.com/fs-minipass/-/fs-minipass-1.2.5.tgz";
        sha1 = "06c277218454ec288df77ada54a03b8702aacb9d";
      };
    }

    {
      name = "fs-write-stream-atomic-1.0.10.tgz";
      path = fetchurl {
        name = "fs-write-stream-atomic-1.0.10.tgz";
        url  = "https://registry.yarnpkg.com/fs-write-stream-atomic/-/fs-write-stream-atomic-1.0.10.tgz";
        sha1 = "b47df53493ef911df75731e70a9ded0189db40c9";
      };
    }

    {
      name = "fs.realpath-1.0.0.tgz";
      path = fetchurl {
        name = "fs.realpath-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fs.realpath/-/fs.realpath-1.0.0.tgz";
        sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
      };
    }

    {
      name = "fsevents-1.2.4.tgz";
      path = fetchurl {
        name = "fsevents-1.2.4.tgz";
        url  = "https://registry.yarnpkg.com/fsevents/-/fsevents-1.2.4.tgz";
        sha1 = "f41dcb1af2582af3692da36fc55cbd8e1041c426";
      };
    }

    {
      name = "fstream-1.0.11.tgz";
      path = fetchurl {
        name = "fstream-1.0.11.tgz";
        url  = "https://registry.yarnpkg.com/fstream/-/fstream-1.0.11.tgz";
        sha1 = "5c1fb1f117477114f0632a0eb4b71b3cb0fd3171";
      };
    }

    {
      name = "function-bind-1.1.1.tgz";
      path = fetchurl {
        name = "function-bind-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/function-bind/-/function-bind-1.1.1.tgz";
        sha1 = "a56899d3ea3c9bab874bb9773b7c5ede92f4895d";
      };
    }

    {
      name = "gauge-2.7.4.tgz";
      path = fetchurl {
        name = "gauge-2.7.4.tgz";
        url  = "https://registry.yarnpkg.com/gauge/-/gauge-2.7.4.tgz";
        sha1 = "2c03405c7538c39d7eb37b317022e325fb018bf7";
      };
    }

    {
      name = "gaze-1.1.3.tgz";
      path = fetchurl {
        name = "gaze-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/gaze/-/gaze-1.1.3.tgz";
        sha1 = "c441733e13b927ac8c0ff0b4c3b033f28812924a";
      };
    }

    {
      name = "get-assigned-identifiers-1.2.0.tgz";
      path = fetchurl {
        name = "get-assigned-identifiers-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/get-assigned-identifiers/-/get-assigned-identifiers-1.2.0.tgz";
        sha1 = "6dbf411de648cbaf8d9169ebb0d2d576191e2ff1";
      };
    }

    {
      name = "get-caller-file-1.0.3.tgz";
      path = fetchurl {
        name = "get-caller-file-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/get-caller-file/-/get-caller-file-1.0.3.tgz";
        sha1 = "f978fa4c90d1dfe7ff2d6beda2a515e713bdcf4a";
      };
    }

    {
      name = "get-stdin-4.0.1.tgz";
      path = fetchurl {
        name = "get-stdin-4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/get-stdin/-/get-stdin-4.0.1.tgz";
        sha1 = "b968c6b0a04384324902e8bf1a5df32579a450fe";
      };
    }

    {
      name = "get-stream-3.0.0.tgz";
      path = fetchurl {
        name = "get-stream-3.0.0.tgz";
        url  = "http://registry.npmjs.org/get-stream/-/get-stream-3.0.0.tgz";
        sha1 = "8e943d1358dc37555054ecbe2edb05aa174ede14";
      };
    }

    {
      name = "get-value-2.0.6.tgz";
      path = fetchurl {
        name = "get-value-2.0.6.tgz";
        url  = "https://registry.yarnpkg.com/get-value/-/get-value-2.0.6.tgz";
        sha1 = "dc15ca1c672387ca76bd37ac0a395ba2042a2c28";
      };
    }

    {
      name = "getpass-0.1.7.tgz";
      path = fetchurl {
        name = "getpass-0.1.7.tgz";
        url  = "https://registry.yarnpkg.com/getpass/-/getpass-0.1.7.tgz";
        sha1 = "5eff8e3e684d569ae4cb2b1282604e8ba62149fa";
      };
    }

    {
      name = "glob-parent-3.1.0.tgz";
      path = fetchurl {
        name = "glob-parent-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/glob-parent/-/glob-parent-3.1.0.tgz";
        sha1 = "9e6af6299d8d3bd2bd40430832bd113df906c5ae";
      };
    }

    {
      name = "glob-6.0.4.tgz";
      path = fetchurl {
        name = "glob-6.0.4.tgz";
        url  = "https://registry.yarnpkg.com/glob/-/glob-6.0.4.tgz";
        sha1 = "0f08860f6a155127b2fadd4f9ce24b1aab6e4d22";
      };
    }

    {
      name = "glob-7.1.3.tgz";
      path = fetchurl {
        name = "glob-7.1.3.tgz";
        url  = "https://registry.yarnpkg.com/glob/-/glob-7.1.3.tgz";
        sha1 = "3960832d3f1574108342dafd3a67b332c0969df1";
      };
    }

    {
      name = "global-modules-path-2.3.0.tgz";
      path = fetchurl {
        name = "global-modules-path-2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/global-modules-path/-/global-modules-path-2.3.0.tgz";
        sha1 = "b0e2bac6beac39745f7db5c59d26a36a0b94f7dc";
      };
    }

    {
      name = "globby-4.1.0.tgz";
      path = fetchurl {
        name = "globby-4.1.0.tgz";
        url  = "https://registry.yarnpkg.com/globby/-/globby-4.1.0.tgz";
        sha1 = "080f54549ec1b82a6c60e631fc82e1211dbe95f8";
      };
    }

    {
      name = "globby-6.1.0.tgz";
      path = fetchurl {
        name = "globby-6.1.0.tgz";
        url  = "https://registry.yarnpkg.com/globby/-/globby-6.1.0.tgz";
        sha1 = "f5a6d70e8395e21c858fb0489d64df02424d506c";
      };
    }

    {
      name = "globule-1.2.1.tgz";
      path = fetchurl {
        name = "globule-1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/globule/-/globule-1.2.1.tgz";
        sha1 = "5dffb1b191f22d20797a9369b49eab4e9839696d";
      };
    }

    {
      name = "graceful-fs-4.1.15.tgz";
      path = fetchurl {
        name = "graceful-fs-4.1.15.tgz";
        url  = "https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-4.1.15.tgz";
        sha1 = "ffb703e1066e8a0eeaa4c8b80ba9253eeefbfb00";
      };
    }

    {
      name = "handle-thing-1.2.5.tgz";
      path = fetchurl {
        name = "handle-thing-1.2.5.tgz";
        url  = "http://registry.npmjs.org/handle-thing/-/handle-thing-1.2.5.tgz";
        sha1 = "fd7aad726bf1a5fd16dfc29b2f7a6601d27139c4";
      };
    }

    {
      name = "har-schema-2.0.0.tgz";
      path = fetchurl {
        name = "har-schema-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/har-schema/-/har-schema-2.0.0.tgz";
        sha1 = "a94c2224ebcac04782a0d9035521f24735b7ec92";
      };
    }

    {
      name = "har-validator-5.1.3.tgz";
      path = fetchurl {
        name = "har-validator-5.1.3.tgz";
        url  = "https://registry.yarnpkg.com/har-validator/-/har-validator-5.1.3.tgz";
        sha1 = "1ef89ebd3e4996557675eed9893110dc350fa080";
      };
    }

    {
      name = "has-ansi-2.0.0.tgz";
      path = fetchurl {
        name = "has-ansi-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-ansi/-/has-ansi-2.0.0.tgz";
        sha1 = "34f5049ce1ecdf2b0649af3ef24e45ed35416d91";
      };
    }

    {
      name = "has-flag-3.0.0.tgz";
      path = fetchurl {
        name = "has-flag-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-flag/-/has-flag-3.0.0.tgz";
        sha1 = "b5d454dc2199ae225699f3467e5a07f3b955bafd";
      };
    }

    {
      name = "has-symbols-1.0.0.tgz";
      path = fetchurl {
        name = "has-symbols-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-symbols/-/has-symbols-1.0.0.tgz";
        sha1 = "ba1a8f1af2a0fc39650f5c850367704122063b44";
      };
    }

    {
      name = "has-unicode-2.0.1.tgz";
      path = fetchurl {
        name = "has-unicode-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/has-unicode/-/has-unicode-2.0.1.tgz";
        sha1 = "e0e6fe6a28cf51138855e086d1691e771de2a8b9";
      };
    }

    {
      name = "has-value-0.3.1.tgz";
      path = fetchurl {
        name = "has-value-0.3.1.tgz";
        url  = "https://registry.yarnpkg.com/has-value/-/has-value-0.3.1.tgz";
        sha1 = "7b1f58bada62ca827ec0a2078025654845995e1f";
      };
    }

    {
      name = "has-value-1.0.0.tgz";
      path = fetchurl {
        name = "has-value-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-value/-/has-value-1.0.0.tgz";
        sha1 = "18b281da585b1c5c51def24c930ed29a0be6b177";
      };
    }

    {
      name = "has-values-0.1.4.tgz";
      path = fetchurl {
        name = "has-values-0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/has-values/-/has-values-0.1.4.tgz";
        sha1 = "6d61de95d91dfca9b9a02089ad384bff8f62b771";
      };
    }

    {
      name = "has-values-1.0.0.tgz";
      path = fetchurl {
        name = "has-values-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-values/-/has-values-1.0.0.tgz";
        sha1 = "95b0b63fec2146619a6fe57fe75628d5a39efe4f";
      };
    }

    {
      name = "has-1.0.3.tgz";
      path = fetchurl {
        name = "has-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/has/-/has-1.0.3.tgz";
        sha1 = "722d7cbfc1f6aa8241f16dd814e011e1f41e8796";
      };
    }

    {
      name = "hash-base-3.0.4.tgz";
      path = fetchurl {
        name = "hash-base-3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/hash-base/-/hash-base-3.0.4.tgz";
        sha1 = "5fc8686847ecd73499403319a6b0a3f3f6ae4918";
      };
    }

    {
      name = "hash.js-1.1.5.tgz";
      path = fetchurl {
        name = "hash.js-1.1.5.tgz";
        url  = "https://registry.yarnpkg.com/hash.js/-/hash.js-1.1.5.tgz";
        sha1 = "e38ab4b85dfb1e0c40fe9265c0e9b54854c23812";
      };
    }

    {
      name = "he-1.2.0.tgz";
      path = fetchurl {
        name = "he-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/he/-/he-1.2.0.tgz";
        sha1 = "84ae65fa7eafb165fddb61566ae14baf05664f0f";
      };
    }

    {
      name = "hmac-drbg-1.0.1.tgz";
      path = fetchurl {
        name = "hmac-drbg-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/hmac-drbg/-/hmac-drbg-1.0.1.tgz";
        sha1 = "d2745701025a6c775a6c545793ed502fc0c649a1";
      };
    }

    {
      name = "hosted-git-info-2.7.1.tgz";
      path = fetchurl {
        name = "hosted-git-info-2.7.1.tgz";
        url  = "https://registry.yarnpkg.com/hosted-git-info/-/hosted-git-info-2.7.1.tgz";
        sha1 = "97f236977bd6e125408930ff6de3eec6281ec047";
      };
    }

    {
      name = "hpack.js-2.1.6.tgz";
      path = fetchurl {
        name = "hpack.js-2.1.6.tgz";
        url  = "https://registry.yarnpkg.com/hpack.js/-/hpack.js-2.1.6.tgz";
        sha1 = "87774c0949e513f42e84575b3c45681fade2a0b2";
      };
    }

    {
      name = "html-entities-1.2.1.tgz";
      path = fetchurl {
        name = "html-entities-1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/html-entities/-/html-entities-1.2.1.tgz";
        sha1 = "0df29351f0721163515dfb9e5543e5f6eed5162f";
      };
    }

    {
      name = "html-minifier-3.5.21.tgz";
      path = fetchurl {
        name = "html-minifier-3.5.21.tgz";
        url  = "https://registry.yarnpkg.com/html-minifier/-/html-minifier-3.5.21.tgz";
        sha1 = "d0040e054730e354db008463593194015212d20c";
      };
    }

    {
      name = "html-webpack-plugin-3.2.0.tgz";
      path = fetchurl {
        name = "html-webpack-plugin-3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/html-webpack-plugin/-/html-webpack-plugin-3.2.0.tgz";
        sha1 = "b01abbd723acaaa7b37b6af4492ebda03d9dd37b";
      };
    }

    {
      name = "htmlescape-1.1.1.tgz";
      path = fetchurl {
        name = "htmlescape-1.1.1.tgz";
        url  = "http://registry.npmjs.org/htmlescape/-/htmlescape-1.1.1.tgz";
        sha1 = "3a03edc2214bca3b66424a3e7959349509cb0351";
      };
    }

    {
      name = "htmlparser2-3.3.0.tgz";
      path = fetchurl {
        name = "htmlparser2-3.3.0.tgz";
        url  = "http://registry.npmjs.org/htmlparser2/-/htmlparser2-3.3.0.tgz";
        sha1 = "cc70d05a59f6542e43f0e685c982e14c924a9efe";
      };
    }

    {
      name = "http-deceiver-1.2.7.tgz";
      path = fetchurl {
        name = "http-deceiver-1.2.7.tgz";
        url  = "https://registry.yarnpkg.com/http-deceiver/-/http-deceiver-1.2.7.tgz";
        sha1 = "fa7168944ab9a519d337cb0bec7284dc3e723d87";
      };
    }

    {
      name = "http-errors-1.6.3.tgz";
      path = fetchurl {
        name = "http-errors-1.6.3.tgz";
        url  = "http://registry.npmjs.org/http-errors/-/http-errors-1.6.3.tgz";
        sha1 = "8b55680bb4be283a0b5bf4ea2e38580be1d9320d";
      };
    }

    {
      name = "http-parser-js-0.5.0.tgz";
      path = fetchurl {
        name = "http-parser-js-0.5.0.tgz";
        url  = "https://registry.yarnpkg.com/http-parser-js/-/http-parser-js-0.5.0.tgz";
        sha1 = "d65edbede84349d0dc30320815a15d39cc3cbbd8";
      };
    }

    {
      name = "http-proxy-middleware-0.18.0.tgz";
      path = fetchurl {
        name = "http-proxy-middleware-0.18.0.tgz";
        url  = "http://registry.npmjs.org/http-proxy-middleware/-/http-proxy-middleware-0.18.0.tgz";
        sha1 = "0987e6bb5a5606e5a69168d8f967a87f15dd8aab";
      };
    }

    {
      name = "http-proxy-1.17.0.tgz";
      path = fetchurl {
        name = "http-proxy-1.17.0.tgz";
        url  = "https://registry.yarnpkg.com/http-proxy/-/http-proxy-1.17.0.tgz";
        sha1 = "7ad38494658f84605e2f6db4436df410f4e5be9a";
      };
    }

    {
      name = "http-signature-1.2.0.tgz";
      path = fetchurl {
        name = "http-signature-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/http-signature/-/http-signature-1.2.0.tgz";
        sha1 = "9aecd925114772f3d95b65a60abb8f7c18fbace1";
      };
    }

    {
      name = "https-browserify-1.0.0.tgz";
      path = fetchurl {
        name = "https-browserify-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/https-browserify/-/https-browserify-1.0.0.tgz";
        sha1 = "ec06c10e0a34c0f2faf199f7fd7fc78fffd03c73";
      };
    }

    {
      name = "https-browserify-0.0.1.tgz";
      path = fetchurl {
        name = "https-browserify-0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/https-browserify/-/https-browserify-0.0.1.tgz";
        sha1 = "3f91365cabe60b77ed0ebba24b454e3e09d95a82";
      };
    }

    {
      name = "iconv-lite-0.4.23.tgz";
      path = fetchurl {
        name = "iconv-lite-0.4.23.tgz";
        url  = "https://registry.yarnpkg.com/iconv-lite/-/iconv-lite-0.4.23.tgz";
        sha1 = "297871f63be507adcfbfca715d0cd0eed84e9a63";
      };
    }

    {
      name = "iconv-lite-0.4.24.tgz";
      path = fetchurl {
        name = "iconv-lite-0.4.24.tgz";
        url  = "https://registry.yarnpkg.com/iconv-lite/-/iconv-lite-0.4.24.tgz";
        sha1 = "2022b4b25fbddc21d2f524974a474aafe733908b";
      };
    }

    {
      name = "icss-replace-symbols-1.1.0.tgz";
      path = fetchurl {
        name = "icss-replace-symbols-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/icss-replace-symbols/-/icss-replace-symbols-1.1.0.tgz";
        sha1 = "06ea6f83679a7749e386cfe1fe812ae5db223ded";
      };
    }

    {
      name = "icss-utils-2.1.0.tgz";
      path = fetchurl {
        name = "icss-utils-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/icss-utils/-/icss-utils-2.1.0.tgz";
        sha1 = "83f0a0ec378bf3246178b6c2ad9136f135b1c962";
      };
    }

    {
      name = "ieee754-1.1.12.tgz";
      path = fetchurl {
        name = "ieee754-1.1.12.tgz";
        url  = "https://registry.yarnpkg.com/ieee754/-/ieee754-1.1.12.tgz";
        sha1 = "50bf24e5b9c8bb98af4964c941cdb0918da7b60b";
      };
    }

    {
      name = "iferr-0.1.5.tgz";
      path = fetchurl {
        name = "iferr-0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/iferr/-/iferr-0.1.5.tgz";
        sha1 = "c60eed69e6d8fdb6b3104a1fcbca1c192dc5b501";
      };
    }

    {
      name = "ignore-walk-3.0.1.tgz";
      path = fetchurl {
        name = "ignore-walk-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/ignore-walk/-/ignore-walk-3.0.1.tgz";
        sha1 = "a83e62e7d272ac0e3b551aaa82831a19b69f82f8";
      };
    }

    {
      name = "import-local-2.0.0.tgz";
      path = fetchurl {
        name = "import-local-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/import-local/-/import-local-2.0.0.tgz";
        sha1 = "55070be38a5993cf18ef6db7e961f5bee5c5a09d";
      };
    }

    {
      name = "imurmurhash-0.1.4.tgz";
      path = fetchurl {
        name = "imurmurhash-0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/imurmurhash/-/imurmurhash-0.1.4.tgz";
        sha1 = "9218b9b2b928a238b13dc4fb6b6d576f231453ea";
      };
    }

    {
      name = "in-publish-2.0.0.tgz";
      path = fetchurl {
        name = "in-publish-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/in-publish/-/in-publish-2.0.0.tgz";
        sha1 = "e20ff5e3a2afc2690320b6dc552682a9c7fadf51";
      };
    }

    {
      name = "indent-string-2.1.0.tgz";
      path = fetchurl {
        name = "indent-string-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/indent-string/-/indent-string-2.1.0.tgz";
        sha1 = "8e2d48348742121b4a8218b7a137e9a52049dc80";
      };
    }

    {
      name = "indexof-0.0.1.tgz";
      path = fetchurl {
        name = "indexof-0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/indexof/-/indexof-0.0.1.tgz";
        sha1 = "82dc336d232b9062179d05ab3293a66059fd435d";
      };
    }

    {
      name = "inflight-1.0.6.tgz";
      path = fetchurl {
        name = "inflight-1.0.6.tgz";
        url  = "https://registry.yarnpkg.com/inflight/-/inflight-1.0.6.tgz";
        sha1 = "49bd6331d7d02d0c09bc910a1075ba8165b56df9";
      };
    }

    {
      name = "inherits-2.0.3.tgz";
      path = fetchurl {
        name = "inherits-2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.3.tgz";
        sha1 = "633c2c83e3da42a502f52466022480f4208261de";
      };
    }

    {
      name = "inherits-2.0.1.tgz";
      path = fetchurl {
        name = "inherits-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.1.tgz";
        sha1 = "b17d08d326b4423e568eff719f91b0b1cbdf69f1";
      };
    }

    {
      name = "ini-1.3.5.tgz";
      path = fetchurl {
        name = "ini-1.3.5.tgz";
        url  = "https://registry.yarnpkg.com/ini/-/ini-1.3.5.tgz";
        sha1 = "eee25f56db1c9ec6085e0c22778083f596abf927";
      };
    }

    {
      name = "inline-source-map-0.6.2.tgz";
      path = fetchurl {
        name = "inline-source-map-0.6.2.tgz";
        url  = "https://registry.yarnpkg.com/inline-source-map/-/inline-source-map-0.6.2.tgz";
        sha1 = "f9393471c18a79d1724f863fa38b586370ade2a5";
      };
    }

    {
      name = "insert-module-globals-7.2.0.tgz";
      path = fetchurl {
        name = "insert-module-globals-7.2.0.tgz";
        url  = "https://registry.yarnpkg.com/insert-module-globals/-/insert-module-globals-7.2.0.tgz";
        sha1 = "ec87e5b42728479e327bd5c5c71611ddfb4752ba";
      };
    }

    {
      name = "internal-ip-3.0.1.tgz";
      path = fetchurl {
        name = "internal-ip-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/internal-ip/-/internal-ip-3.0.1.tgz";
        sha1 = "df5c99876e1d2eb2ea2d74f520e3f669a00ece27";
      };
    }

    {
      name = "interpret-1.1.0.tgz";
      path = fetchurl {
        name = "interpret-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/interpret/-/interpret-1.1.0.tgz";
        sha1 = "7ed1b1410c6a0e0f78cf95d3b8440c63f78b8614";
      };
    }

    {
      name = "invert-kv-1.0.0.tgz";
      path = fetchurl {
        name = "invert-kv-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/invert-kv/-/invert-kv-1.0.0.tgz";
        sha1 = "104a8e4aaca6d3d8cd157a8ef8bfab2d7a3ffdb6";
      };
    }

    {
      name = "invert-kv-2.0.0.tgz";
      path = fetchurl {
        name = "invert-kv-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/invert-kv/-/invert-kv-2.0.0.tgz";
        sha1 = "7393f5afa59ec9ff5f67a27620d11c226e3eec02";
      };
    }

    {
      name = "ip-regex-2.1.0.tgz";
      path = fetchurl {
        name = "ip-regex-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/ip-regex/-/ip-regex-2.1.0.tgz";
        sha1 = "fa78bf5d2e6913c911ce9f819ee5146bb6d844e9";
      };
    }

    {
      name = "ip-1.1.5.tgz";
      path = fetchurl {
        name = "ip-1.1.5.tgz";
        url  = "https://registry.yarnpkg.com/ip/-/ip-1.1.5.tgz";
        sha1 = "bdded70114290828c0a039e72ef25f5aaec4354a";
      };
    }

    {
      name = "ipaddr.js-1.8.0.tgz";
      path = fetchurl {
        name = "ipaddr.js-1.8.0.tgz";
        url  = "https://registry.yarnpkg.com/ipaddr.js/-/ipaddr.js-1.8.0.tgz";
        sha1 = "eaa33d6ddd7ace8f7f6fe0c9ca0440e706738b1e";
      };
    }

    {
      name = "ipaddr.js-1.8.1.tgz";
      path = fetchurl {
        name = "ipaddr.js-1.8.1.tgz";
        url  = "https://registry.yarnpkg.com/ipaddr.js/-/ipaddr.js-1.8.1.tgz";
        sha1 = "fa4b79fa47fd3def5e3b159825161c0a519c9427";
      };
    }

    {
      name = "is-accessor-descriptor-0.1.6.tgz";
      path = fetchurl {
        name = "is-accessor-descriptor-0.1.6.tgz";
        url  = "https://registry.yarnpkg.com/is-accessor-descriptor/-/is-accessor-descriptor-0.1.6.tgz";
        sha1 = "a9e12cb3ae8d876727eeef3843f8a0897b5c98d6";
      };
    }

    {
      name = "is-accessor-descriptor-1.0.0.tgz";
      path = fetchurl {
        name = "is-accessor-descriptor-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-accessor-descriptor/-/is-accessor-descriptor-1.0.0.tgz";
        sha1 = "169c2f6d3df1f992618072365c9b0ea1f6878656";
      };
    }

    {
      name = "is-arrayish-0.2.1.tgz";
      path = fetchurl {
        name = "is-arrayish-0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/is-arrayish/-/is-arrayish-0.2.1.tgz";
        sha1 = "77c99840527aa8ecb1a8ba697b80645a7a926a9d";
      };
    }

    {
      name = "is-binary-path-1.0.1.tgz";
      path = fetchurl {
        name = "is-binary-path-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-binary-path/-/is-binary-path-1.0.1.tgz";
        sha1 = "75f16642b480f187a711c814161fd3a4a7655898";
      };
    }

    {
      name = "is-buffer-1.1.6.tgz";
      path = fetchurl {
        name = "is-buffer-1.1.6.tgz";
        url  = "https://registry.yarnpkg.com/is-buffer/-/is-buffer-1.1.6.tgz";
        sha1 = "efaa2ea9daa0d7ab2ea13a97b2b8ad51fefbe8be";
      };
    }

    {
      name = "is-builtin-module-1.0.0.tgz";
      path = fetchurl {
        name = "is-builtin-module-1.0.0.tgz";
        url  = "http://registry.npmjs.org/is-builtin-module/-/is-builtin-module-1.0.0.tgz";
        sha1 = "540572d34f7ac3119f8f76c30cbc1b1e037affbe";
      };
    }

    {
      name = "is-callable-1.1.4.tgz";
      path = fetchurl {
        name = "is-callable-1.1.4.tgz";
        url  = "https://registry.yarnpkg.com/is-callable/-/is-callable-1.1.4.tgz";
        sha1 = "1e1adf219e1eeb684d691f9d6a05ff0d30a24d75";
      };
    }

    {
      name = "is-data-descriptor-0.1.4.tgz";
      path = fetchurl {
        name = "is-data-descriptor-0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/is-data-descriptor/-/is-data-descriptor-0.1.4.tgz";
        sha1 = "0b5ee648388e2c860282e793f1856fec3f301b56";
      };
    }

    {
      name = "is-data-descriptor-1.0.0.tgz";
      path = fetchurl {
        name = "is-data-descriptor-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-data-descriptor/-/is-data-descriptor-1.0.0.tgz";
        sha1 = "d84876321d0e7add03990406abbbbd36ba9268c7";
      };
    }

    {
      name = "is-date-object-1.0.1.tgz";
      path = fetchurl {
        name = "is-date-object-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-date-object/-/is-date-object-1.0.1.tgz";
        sha1 = "9aa20eb6aeebbff77fbd33e74ca01b33581d3a16";
      };
    }

    {
      name = "is-descriptor-0.1.6.tgz";
      path = fetchurl {
        name = "is-descriptor-0.1.6.tgz";
        url  = "https://registry.yarnpkg.com/is-descriptor/-/is-descriptor-0.1.6.tgz";
        sha1 = "366d8240dde487ca51823b1ab9f07a10a78251ca";
      };
    }

    {
      name = "is-descriptor-1.0.2.tgz";
      path = fetchurl {
        name = "is-descriptor-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/is-descriptor/-/is-descriptor-1.0.2.tgz";
        sha1 = "3b159746a66604b04f8c81524ba365c5f14d86ec";
      };
    }

    {
      name = "is-extendable-0.1.1.tgz";
      path = fetchurl {
        name = "is-extendable-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/is-extendable/-/is-extendable-0.1.1.tgz";
        sha1 = "62b110e289a471418e3ec36a617d472e301dfc89";
      };
    }

    {
      name = "is-extendable-1.0.1.tgz";
      path = fetchurl {
        name = "is-extendable-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-extendable/-/is-extendable-1.0.1.tgz";
        sha1 = "a7470f9e426733d81bd81e1155264e3a3507cab4";
      };
    }

    {
      name = "is-extglob-2.1.1.tgz";
      path = fetchurl {
        name = "is-extglob-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/is-extglob/-/is-extglob-2.1.1.tgz";
        sha1 = "a88c02535791f02ed37c76a1b9ea9773c833f8c2";
      };
    }

    {
      name = "is-finite-1.0.2.tgz";
      path = fetchurl {
        name = "is-finite-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/is-finite/-/is-finite-1.0.2.tgz";
        sha1 = "cc6677695602be550ef11e8b4aa6305342b6d0aa";
      };
    }

    {
      name = "is-fullwidth-code-point-1.0.0.tgz";
      path = fetchurl {
        name = "is-fullwidth-code-point-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz";
        sha1 = "ef9e31386f031a7f0d643af82fde50c457ef00cb";
      };
    }

    {
      name = "is-fullwidth-code-point-2.0.0.tgz";
      path = fetchurl {
        name = "is-fullwidth-code-point-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz";
        sha1 = "a3b30a5c4f199183167aaab93beefae3ddfb654f";
      };
    }

    {
      name = "is-glob-3.1.0.tgz";
      path = fetchurl {
        name = "is-glob-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-glob/-/is-glob-3.1.0.tgz";
        sha1 = "7ba5ae24217804ac70707b96922567486cc3e84a";
      };
    }

    {
      name = "is-glob-4.0.0.tgz";
      path = fetchurl {
        name = "is-glob-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-glob/-/is-glob-4.0.0.tgz";
        sha1 = "9521c76845cc2610a85203ddf080a958c2ffabc0";
      };
    }

    {
      name = "is-number-3.0.0.tgz";
      path = fetchurl {
        name = "is-number-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-number/-/is-number-3.0.0.tgz";
        sha1 = "24fd6201a4782cf50561c810276afc7d12d71195";
      };
    }

    {
      name = "is-path-cwd-1.0.0.tgz";
      path = fetchurl {
        name = "is-path-cwd-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-path-cwd/-/is-path-cwd-1.0.0.tgz";
        sha1 = "d225ec23132e89edd38fda767472e62e65f1106d";
      };
    }

    {
      name = "is-path-in-cwd-1.0.1.tgz";
      path = fetchurl {
        name = "is-path-in-cwd-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-path-in-cwd/-/is-path-in-cwd-1.0.1.tgz";
        sha1 = "5ac48b345ef675339bd6c7a48a912110b241cf52";
      };
    }

    {
      name = "is-path-inside-1.0.1.tgz";
      path = fetchurl {
        name = "is-path-inside-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-path-inside/-/is-path-inside-1.0.1.tgz";
        sha1 = "8ef5b7de50437a3fdca6b4e865ef7aa55cb48036";
      };
    }

    {
      name = "is-plain-object-2.0.4.tgz";
      path = fetchurl {
        name = "is-plain-object-2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/is-plain-object/-/is-plain-object-2.0.4.tgz";
        sha1 = "2c163b3fafb1b606d9d17928f05c2a1c38e07677";
      };
    }

    {
      name = "is-regex-1.0.4.tgz";
      path = fetchurl {
        name = "is-regex-1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/is-regex/-/is-regex-1.0.4.tgz";
        sha1 = "5517489b547091b0930e095654ced25ee97e9491";
      };
    }

    {
      name = "is-stream-1.1.0.tgz";
      path = fetchurl {
        name = "is-stream-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-stream/-/is-stream-1.1.0.tgz";
        sha1 = "12d4a3dd4e68e0b79ceb8dbc84173ae80d91ca44";
      };
    }

    {
      name = "is-symbol-1.0.2.tgz";
      path = fetchurl {
        name = "is-symbol-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/is-symbol/-/is-symbol-1.0.2.tgz";
        sha1 = "a055f6ae57192caee329e7a860118b497a950f38";
      };
    }

    {
      name = "is-typedarray-1.0.0.tgz";
      path = fetchurl {
        name = "is-typedarray-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-typedarray/-/is-typedarray-1.0.0.tgz";
        sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
      };
    }

    {
      name = "is-utf8-0.2.1.tgz";
      path = fetchurl {
        name = "is-utf8-0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/is-utf8/-/is-utf8-0.2.1.tgz";
        sha1 = "4b0da1442104d1b336340e80797e865cf39f7d72";
      };
    }

    {
      name = "is-windows-1.0.2.tgz";
      path = fetchurl {
        name = "is-windows-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/is-windows/-/is-windows-1.0.2.tgz";
        sha1 = "d1850eb9791ecd18e6182ce12a30f396634bb19d";
      };
    }

    {
      name = "is-wsl-1.1.0.tgz";
      path = fetchurl {
        name = "is-wsl-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-wsl/-/is-wsl-1.1.0.tgz";
        sha1 = "1f16e4aa22b04d1336b66188a66af3c600c3a66d";
      };
    }

    {
      name = "isarray-0.0.1.tgz";
      path = fetchurl {
        name = "isarray-0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/isarray/-/isarray-0.0.1.tgz";
        sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
      };
    }

    {
      name = "isarray-1.0.0.tgz";
      path = fetchurl {
        name = "isarray-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/isarray/-/isarray-1.0.0.tgz";
        sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
      };
    }

    {
      name = "isarray-2.0.4.tgz";
      path = fetchurl {
        name = "isarray-2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/isarray/-/isarray-2.0.4.tgz";
        sha1 = "38e7bcbb0f3ba1b7933c86ba1894ddfc3781bbb7";
      };
    }

    {
      name = "isexe-2.0.0.tgz";
      path = fetchurl {
        name = "isexe-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/isexe/-/isexe-2.0.0.tgz";
        sha1 = "e8fbf374dc556ff8947a10dcb0572d633f2cfa10";
      };
    }

    {
      name = "isobject-2.1.0.tgz";
      path = fetchurl {
        name = "isobject-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/isobject/-/isobject-2.1.0.tgz";
        sha1 = "f065561096a3f1da2ef46272f815c840d87e0c89";
      };
    }

    {
      name = "isobject-3.0.1.tgz";
      path = fetchurl {
        name = "isobject-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/isobject/-/isobject-3.0.1.tgz";
        sha1 = "4e431e92b11a9731636aa1f9c8d1ccbcfdab78df";
      };
    }

    {
      name = "isstream-0.1.2.tgz";
      path = fetchurl {
        name = "isstream-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/isstream/-/isstream-0.1.2.tgz";
        sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
      };
    }

    {
      name = "jquery-3.3.1.tgz";
      path = fetchurl {
        name = "jquery-3.3.1.tgz";
        url  = "https://registry.yarnpkg.com/jquery/-/jquery-3.3.1.tgz";
        sha1 = "958ce29e81c9790f31be7792df5d4d95fc57fbca";
      };
    }

    {
      name = "js-base64-2.4.9.tgz";
      path = fetchurl {
        name = "js-base64-2.4.9.tgz";
        url  = "https://registry.yarnpkg.com/js-base64/-/js-base64-2.4.9.tgz";
        sha1 = "748911fb04f48a60c4771b375cac45a80df11c03";
      };
    }

    {
      name = "js-string-escape-1.0.1.tgz";
      path = fetchurl {
        name = "js-string-escape-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/js-string-escape/-/js-string-escape-1.0.1.tgz";
        sha1 = "e2625badbc0d67c7533e9edc1068c587ae4137ef";
      };
    }

    {
      name = "js-tokens-3.0.2.tgz";
      path = fetchurl {
        name = "js-tokens-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/js-tokens/-/js-tokens-3.0.2.tgz";
        sha1 = "9866df395102130e38f7f996bceb65443209c25b";
      };
    }

    {
      name = "jsbn-0.1.1.tgz";
      path = fetchurl {
        name = "jsbn-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/jsbn/-/jsbn-0.1.1.tgz";
        sha1 = "a5e654c2e5a2deb5f201d96cefbca80c0ef2f513";
      };
    }

    {
      name = "jsesc-0.5.0.tgz";
      path = fetchurl {
        name = "jsesc-0.5.0.tgz";
        url  = "http://registry.npmjs.org/jsesc/-/jsesc-0.5.0.tgz";
        sha1 = "e7dee66e35d6fc16f710fe91d5cf69f70f08911d";
      };
    }

    {
      name = "json-parse-better-errors-1.0.2.tgz";
      path = fetchurl {
        name = "json-parse-better-errors-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/json-parse-better-errors/-/json-parse-better-errors-1.0.2.tgz";
        sha1 = "bb867cfb3450e69107c131d1c514bab3dc8bcaa9";
      };
    }

    {
      name = "json-schema-traverse-0.3.1.tgz";
      path = fetchurl {
        name = "json-schema-traverse-0.3.1.tgz";
        url  = "https://registry.yarnpkg.com/json-schema-traverse/-/json-schema-traverse-0.3.1.tgz";
        sha1 = "349a6d44c53a51de89b40805c5d5e59b417d3340";
      };
    }

    {
      name = "json-schema-traverse-0.4.1.tgz";
      path = fetchurl {
        name = "json-schema-traverse-0.4.1.tgz";
        url  = "https://registry.yarnpkg.com/json-schema-traverse/-/json-schema-traverse-0.4.1.tgz";
        sha1 = "69f6a87d9513ab8bb8fe63bdb0979c448e684660";
      };
    }

    {
      name = "json-schema-0.2.3.tgz";
      path = fetchurl {
        name = "json-schema-0.2.3.tgz";
        url  = "https://registry.yarnpkg.com/json-schema/-/json-schema-0.2.3.tgz";
        sha1 = "b480c892e59a2f05954ce727bd3f2a4e882f9e13";
      };
    }

    {
      name = "json-stable-stringify-0.0.1.tgz";
      path = fetchurl {
        name = "json-stable-stringify-0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/json-stable-stringify/-/json-stable-stringify-0.0.1.tgz";
        sha1 = "611c23e814db375527df851193db59dd2af27f45";
      };
    }

    {
      name = "json-stringify-safe-5.0.1.tgz";
      path = fetchurl {
        name = "json-stringify-safe-5.0.1.tgz";
        url  = "https://registry.yarnpkg.com/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
        sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
      };
    }

    {
      name = "json3-3.3.2.tgz";
      path = fetchurl {
        name = "json3-3.3.2.tgz";
        url  = "https://registry.yarnpkg.com/json3/-/json3-3.3.2.tgz";
        sha1 = "3c0434743df93e2f5c42aee7b19bcb483575f4e1";
      };
    }

    {
      name = "json5-0.5.1.tgz";
      path = fetchurl {
        name = "json5-0.5.1.tgz";
        url  = "https://registry.yarnpkg.com/json5/-/json5-0.5.1.tgz";
        sha1 = "1eade7acc012034ad84e2396767ead9fa5495821";
      };
    }

    {
      name = "jsonify-0.0.0.tgz";
      path = fetchurl {
        name = "jsonify-0.0.0.tgz";
        url  = "https://registry.yarnpkg.com/jsonify/-/jsonify-0.0.0.tgz";
        sha1 = "2c74b6ee41d93ca51b7b5aaee8f503631d252a73";
      };
    }

    {
      name = "jsonparse-0.0.5.tgz";
      path = fetchurl {
        name = "jsonparse-0.0.5.tgz";
        url  = "https://registry.yarnpkg.com/jsonparse/-/jsonparse-0.0.5.tgz";
        sha1 = "330542ad3f0a654665b778f3eb2d9a9fa507ac64";
      };
    }

    {
      name = "jsonparse-1.3.1.tgz";
      path = fetchurl {
        name = "jsonparse-1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/jsonparse/-/jsonparse-1.3.1.tgz";
        sha1 = "3f4dae4a91fac315f71062f8521cc239f1366280";
      };
    }

    {
      name = "jsprim-1.4.1.tgz";
      path = fetchurl {
        name = "jsprim-1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/jsprim/-/jsprim-1.4.1.tgz";
        sha1 = "313e66bc1e5cc06e438bc1b7499c2e5c56acb6a2";
      };
    }

    {
      name = "killable-1.0.1.tgz";
      path = fetchurl {
        name = "killable-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/killable/-/killable-1.0.1.tgz";
        sha1 = "4c8ce441187a061c7474fb87ca08e2a638194892";
      };
    }

    {
      name = "kind-of-3.2.2.tgz";
      path = fetchurl {
        name = "kind-of-3.2.2.tgz";
        url  = "https://registry.yarnpkg.com/kind-of/-/kind-of-3.2.2.tgz";
        sha1 = "31ea21a734bab9bbb0f32466d893aea51e4a3c64";
      };
    }

    {
      name = "kind-of-4.0.0.tgz";
      path = fetchurl {
        name = "kind-of-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/kind-of/-/kind-of-4.0.0.tgz";
        sha1 = "20813df3d712928b207378691a45066fae72dd57";
      };
    }

    {
      name = "kind-of-5.1.0.tgz";
      path = fetchurl {
        name = "kind-of-5.1.0.tgz";
        url  = "https://registry.yarnpkg.com/kind-of/-/kind-of-5.1.0.tgz";
        sha1 = "729c91e2d857b7a419a1f9aa65685c4c33f5845d";
      };
    }

    {
      name = "kind-of-6.0.2.tgz";
      path = fetchurl {
        name = "kind-of-6.0.2.tgz";
        url  = "https://registry.yarnpkg.com/kind-of/-/kind-of-6.0.2.tgz";
        sha1 = "01146b36a6218e64e58f3a8d66de5d7fc6f6d051";
      };
    }

    {
      name = "labeled-stream-splicer-2.0.1.tgz";
      path = fetchurl {
        name = "labeled-stream-splicer-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/labeled-stream-splicer/-/labeled-stream-splicer-2.0.1.tgz";
        sha1 = "9cffa32fd99e1612fd1d86a8db962416d5292926";
      };
    }

    {
      name = "lcid-1.0.0.tgz";
      path = fetchurl {
        name = "lcid-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lcid/-/lcid-1.0.0.tgz";
        sha1 = "308accafa0bc483a3867b4b6f2b9506251d1b835";
      };
    }

    {
      name = "lcid-2.0.0.tgz";
      path = fetchurl {
        name = "lcid-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lcid/-/lcid-2.0.0.tgz";
        sha1 = "6ef5d2df60e52f82eb228a4c373e8d1f397253cf";
      };
    }

    {
      name = "load-json-file-1.1.0.tgz";
      path = fetchurl {
        name = "load-json-file-1.1.0.tgz";
        url  = "http://registry.npmjs.org/load-json-file/-/load-json-file-1.1.0.tgz";
        sha1 = "956905708d58b4bab4c2261b04f59f31c99374c0";
      };
    }

    {
      name = "loader-runner-2.3.1.tgz";
      path = fetchurl {
        name = "loader-runner-2.3.1.tgz";
        url  = "https://registry.yarnpkg.com/loader-runner/-/loader-runner-2.3.1.tgz";
        sha1 = "026f12fe7c3115992896ac02ba022ba92971b979";
      };
    }

    {
      name = "loader-utils-0.2.17.tgz";
      path = fetchurl {
        name = "loader-utils-0.2.17.tgz";
        url  = "https://registry.yarnpkg.com/loader-utils/-/loader-utils-0.2.17.tgz";
        sha1 = "f86e6374d43205a6e6c60e9196f17c0299bfb348";
      };
    }

    {
      name = "loader-utils-1.1.0.tgz";
      path = fetchurl {
        name = "loader-utils-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/loader-utils/-/loader-utils-1.1.0.tgz";
        sha1 = "c98aef488bcceda2ffb5e2de646d6a754429f5cd";
      };
    }

    {
      name = "locate-path-3.0.0.tgz";
      path = fetchurl {
        name = "locate-path-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/locate-path/-/locate-path-3.0.0.tgz";
        sha1 = "dbec3b3ab759758071b58fe59fc41871af21400e";
      };
    }

    {
      name = "lodash.assign-4.2.0.tgz";
      path = fetchurl {
        name = "lodash.assign-4.2.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.assign/-/lodash.assign-4.2.0.tgz";
        sha1 = "0d99f3ccd7a6d261d19bdaeb9245005d285808e7";
      };
    }

    {
      name = "lodash.clonedeep-4.5.0.tgz";
      path = fetchurl {
        name = "lodash.clonedeep-4.5.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.clonedeep/-/lodash.clonedeep-4.5.0.tgz";
        sha1 = "e23f3f9c4f8fbdde872529c1071857a086e5ccef";
      };
    }

    {
      name = "lodash.debounce-4.0.8.tgz";
      path = fetchurl {
        name = "lodash.debounce-4.0.8.tgz";
        url  = "https://registry.yarnpkg.com/lodash.debounce/-/lodash.debounce-4.0.8.tgz";
        sha1 = "82d79bff30a67c4005ffd5e2515300ad9ca4d7af";
      };
    }

    {
      name = "lodash.difference-4.5.0.tgz";
      path = fetchurl {
        name = "lodash.difference-4.5.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.difference/-/lodash.difference-4.5.0.tgz";
        sha1 = "9ccb4e505d486b91651345772885a2df27fd017c";
      };
    }

    {
      name = "lodash.memoize-3.0.4.tgz";
      path = fetchurl {
        name = "lodash.memoize-3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/lodash.memoize/-/lodash.memoize-3.0.4.tgz";
        sha1 = "2dcbd2c287cbc0a55cc42328bd0c736150d53e3f";
      };
    }

    {
      name = "lodash.mergewith-4.6.1.tgz";
      path = fetchurl {
        name = "lodash.mergewith-4.6.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.mergewith/-/lodash.mergewith-4.6.1.tgz";
        sha1 = "639057e726c3afbdb3e7d42741caa8d6e4335927";
      };
    }

    {
      name = "lodash.tail-4.1.1.tgz";
      path = fetchurl {
        name = "lodash.tail-4.1.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.tail/-/lodash.tail-4.1.1.tgz";
        sha1 = "d2333a36d9e7717c8ad2f7cacafec7c32b444664";
      };
    }

    {
      name = "lodash-4.17.11.tgz";
      path = fetchurl {
        name = "lodash-4.17.11.tgz";
        url  = "https://registry.yarnpkg.com/lodash/-/lodash-4.17.11.tgz";
        sha1 = "b39ea6229ef607ecd89e2c8df12536891cac9b8d";
      };
    }

    {
      name = "loglevel-1.6.1.tgz";
      path = fetchurl {
        name = "loglevel-1.6.1.tgz";
        url  = "https://registry.yarnpkg.com/loglevel/-/loglevel-1.6.1.tgz";
        sha1 = "e0fc95133b6ef276cdc8887cdaf24aa6f156f8fa";
      };
    }

    {
      name = "loud-rejection-1.6.0.tgz";
      path = fetchurl {
        name = "loud-rejection-1.6.0.tgz";
        url  = "https://registry.yarnpkg.com/loud-rejection/-/loud-rejection-1.6.0.tgz";
        sha1 = "5b46f80147edee578870f086d04821cf998e551f";
      };
    }

    {
      name = "lower-case-1.1.4.tgz";
      path = fetchurl {
        name = "lower-case-1.1.4.tgz";
        url  = "https://registry.yarnpkg.com/lower-case/-/lower-case-1.1.4.tgz";
        sha1 = "9a2cabd1b9e8e0ae993a4bf7d5875c39c42e8eac";
      };
    }

    {
      name = "lru-cache-4.1.3.tgz";
      path = fetchurl {
        name = "lru-cache-4.1.3.tgz";
        url  = "https://registry.yarnpkg.com/lru-cache/-/lru-cache-4.1.3.tgz";
        sha1 = "a1175cf3496dfc8436c156c334b4955992bce69c";
      };
    }

    {
      name = "lru-cache-4.1.4.tgz";
      path = fetchurl {
        name = "lru-cache-4.1.4.tgz";
        url  = "https://registry.yarnpkg.com/lru-cache/-/lru-cache-4.1.4.tgz";
        sha1 = "51cc46e8e6d9530771c857e24ccc720ecdbcc031";
      };
    }

    {
      name = "make-dir-1.3.0.tgz";
      path = fetchurl {
        name = "make-dir-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/make-dir/-/make-dir-1.3.0.tgz";
        sha1 = "79c1033b80515bd6d24ec9933e860ca75ee27f0c";
      };
    }

    {
      name = "map-age-cleaner-0.1.3.tgz";
      path = fetchurl {
        name = "map-age-cleaner-0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/map-age-cleaner/-/map-age-cleaner-0.1.3.tgz";
        sha1 = "7d583a7306434c055fe474b0f45078e6e1b4b92a";
      };
    }

    {
      name = "map-cache-0.2.2.tgz";
      path = fetchurl {
        name = "map-cache-0.2.2.tgz";
        url  = "https://registry.yarnpkg.com/map-cache/-/map-cache-0.2.2.tgz";
        sha1 = "c32abd0bd6525d9b051645bb4f26ac5dc98a0dbf";
      };
    }

    {
      name = "map-obj-1.0.1.tgz";
      path = fetchurl {
        name = "map-obj-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/map-obj/-/map-obj-1.0.1.tgz";
        sha1 = "d933ceb9205d82bdcf4886f6742bdc2b4dea146d";
      };
    }

    {
      name = "map-visit-1.0.0.tgz";
      path = fetchurl {
        name = "map-visit-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/map-visit/-/map-visit-1.0.0.tgz";
        sha1 = "ecdca8f13144e660f1b5bd41f12f3479d98dfb8f";
      };
    }

    {
      name = "md5.js-1.3.5.tgz";
      path = fetchurl {
        name = "md5.js-1.3.5.tgz";
        url  = "https://registry.yarnpkg.com/md5.js/-/md5.js-1.3.5.tgz";
        sha1 = "b5d07b8e3216e3e27cd728d72f70d1e6a342005f";
      };
    }

    {
      name = "media-typer-0.3.0.tgz";
      path = fetchurl {
        name = "media-typer-0.3.0.tgz";
        url  = "http://registry.npmjs.org/media-typer/-/media-typer-0.3.0.tgz";
        sha1 = "8710d7af0aa626f8fffa1ce00168545263255748";
      };
    }

    {
      name = "mem-4.0.0.tgz";
      path = fetchurl {
        name = "mem-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/mem/-/mem-4.0.0.tgz";
        sha1 = "6437690d9471678f6cc83659c00cbafcd6b0cdaf";
      };
    }

    {
      name = "memory-fs-0.4.1.tgz";
      path = fetchurl {
        name = "memory-fs-0.4.1.tgz";
        url  = "https://registry.yarnpkg.com/memory-fs/-/memory-fs-0.4.1.tgz";
        sha1 = "3a9a20b8462523e447cfbc7e8bb80ed667bfc552";
      };
    }

    {
      name = "meow-3.7.0.tgz";
      path = fetchurl {
        name = "meow-3.7.0.tgz";
        url  = "http://registry.npmjs.org/meow/-/meow-3.7.0.tgz";
        sha1 = "72cb668b425228290abbfa856892587308a801fb";
      };
    }

    {
      name = "merge-descriptors-1.0.1.tgz";
      path = fetchurl {
        name = "merge-descriptors-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/merge-descriptors/-/merge-descriptors-1.0.1.tgz";
        sha1 = "b00aaa556dd8b44568150ec9d1b953f3f90cbb61";
      };
    }

    {
      name = "methods-1.1.2.tgz";
      path = fetchurl {
        name = "methods-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/methods/-/methods-1.1.2.tgz";
        sha1 = "5529a4d67654134edcc5266656835b0f851afcee";
      };
    }

    {
      name = "micromatch-3.1.10.tgz";
      path = fetchurl {
        name = "micromatch-3.1.10.tgz";
        url  = "https://registry.yarnpkg.com/micromatch/-/micromatch-3.1.10.tgz";
        sha1 = "70859bc95c9840952f359a068a3fc49f9ecfac23";
      };
    }

    {
      name = "miller-rabin-4.0.1.tgz";
      path = fetchurl {
        name = "miller-rabin-4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/miller-rabin/-/miller-rabin-4.0.1.tgz";
        sha1 = "f080351c865b0dc562a8462966daa53543c78a4d";
      };
    }

    {
      name = "mime-db-1.37.0.tgz";
      path = fetchurl {
        name = "mime-db-1.37.0.tgz";
        url  = "https://registry.yarnpkg.com/mime-db/-/mime-db-1.37.0.tgz";
        sha1 = "0b6a0ce6fdbe9576e25f1f2d2fde8830dc0ad0d8";
      };
    }

    {
      name = "mime-types-2.1.21.tgz";
      path = fetchurl {
        name = "mime-types-2.1.21.tgz";
        url  = "https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.21.tgz";
        sha1 = "28995aa1ecb770742fe6ae7e58f9181c744b3f96";
      };
    }

    {
      name = "mime-1.4.1.tgz";
      path = fetchurl {
        name = "mime-1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/mime/-/mime-1.4.1.tgz";
        sha1 = "121f9ebc49e3766f311a76e1fa1c8003c4b03aa6";
      };
    }

    {
      name = "mime-1.6.0.tgz";
      path = fetchurl {
        name = "mime-1.6.0.tgz";
        url  = "https://registry.yarnpkg.com/mime/-/mime-1.6.0.tgz";
        sha1 = "32cd9e5c64553bd58d19a568af452acff04981b1";
      };
    }

    {
      name = "mime-2.3.1.tgz";
      path = fetchurl {
        name = "mime-2.3.1.tgz";
        url  = "https://registry.yarnpkg.com/mime/-/mime-2.3.1.tgz";
        sha1 = "b1621c54d63b97c47d3cfe7f7215f7d64517c369";
      };
    }

    {
      name = "mimic-fn-1.2.0.tgz";
      path = fetchurl {
        name = "mimic-fn-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/mimic-fn/-/mimic-fn-1.2.0.tgz";
        sha1 = "820c86a39334640e99516928bd03fca88057d022";
      };
    }

    {
      name = "minimalistic-assert-1.0.1.tgz";
      path = fetchurl {
        name = "minimalistic-assert-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/minimalistic-assert/-/minimalistic-assert-1.0.1.tgz";
        sha1 = "2e194de044626d4a10e7f7fbc00ce73e83e4d5c7";
      };
    }

    {
      name = "minimalistic-crypto-utils-1.0.1.tgz";
      path = fetchurl {
        name = "minimalistic-crypto-utils-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/minimalistic-crypto-utils/-/minimalistic-crypto-utils-1.0.1.tgz";
        sha1 = "f6c00c1c0b082246e5c4d99dfb8c7c083b2b582a";
      };
    }

    {
      name = "minimatch-3.0.4.tgz";
      path = fetchurl {
        name = "minimatch-3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/minimatch/-/minimatch-3.0.4.tgz";
        sha1 = "5166e286457f03306064be5497e8dbb0c3d32083";
      };
    }

    {
      name = "minimist-0.0.8.tgz";
      path = fetchurl {
        name = "minimist-0.0.8.tgz";
        url  = "https://registry.yarnpkg.com/minimist/-/minimist-0.0.8.tgz";
        sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
      };
    }

    {
      name = "minimist-1.2.0.tgz";
      path = fetchurl {
        name = "minimist-1.2.0.tgz";
        url  = "http://registry.npmjs.org/minimist/-/minimist-1.2.0.tgz";
        sha1 = "a35008b20f41383eec1fb914f4cd5df79a264284";
      };
    }

    {
      name = "minimist-0.0.10.tgz";
      path = fetchurl {
        name = "minimist-0.0.10.tgz";
        url  = "http://registry.npmjs.org/minimist/-/minimist-0.0.10.tgz";
        sha1 = "de3f98543dbf96082be48ad1a0c7cda836301dcf";
      };
    }

    {
      name = "minipass-2.3.5.tgz";
      path = fetchurl {
        name = "minipass-2.3.5.tgz";
        url  = "https://registry.yarnpkg.com/minipass/-/minipass-2.3.5.tgz";
        sha1 = "cacebe492022497f656b0f0f51e2682a9ed2d848";
      };
    }

    {
      name = "minizlib-1.1.1.tgz";
      path = fetchurl {
        name = "minizlib-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/minizlib/-/minizlib-1.1.1.tgz";
        sha1 = "6734acc045a46e61d596a43bb9d9cd326e19cc42";
      };
    }

    {
      name = "mississippi-3.0.0.tgz";
      path = fetchurl {
        name = "mississippi-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/mississippi/-/mississippi-3.0.0.tgz";
        sha1 = "ea0a3291f97e0b5e8776b363d5f0a12d94c67022";
      };
    }

    {
      name = "mixin-deep-1.3.1.tgz";
      path = fetchurl {
        name = "mixin-deep-1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/mixin-deep/-/mixin-deep-1.3.1.tgz";
        sha1 = "a49e7268dce1a0d9698e45326c5626df3543d0fe";
      };
    }

    {
      name = "mixin-object-2.0.1.tgz";
      path = fetchurl {
        name = "mixin-object-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/mixin-object/-/mixin-object-2.0.1.tgz";
        sha1 = "4fb949441dab182540f1fe035ba60e1947a5e57e";
      };
    }

    {
      name = "mkdirp-0.5.1.tgz";
      path = fetchurl {
        name = "mkdirp-0.5.1.tgz";
        url  = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
        sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
      };
    }

    {
      name = "module-deps-4.1.1.tgz";
      path = fetchurl {
        name = "module-deps-4.1.1.tgz";
        url  = "https://registry.yarnpkg.com/module-deps/-/module-deps-4.1.1.tgz";
        sha1 = "23215833f1da13fd606ccb8087b44852dcb821fd";
      };
    }

    {
      name = "mold-source-map-0.4.0.tgz";
      path = fetchurl {
        name = "mold-source-map-0.4.0.tgz";
        url  = "https://registry.yarnpkg.com/mold-source-map/-/mold-source-map-0.4.0.tgz";
        sha1 = "cf67e0b31c47ab9badb5c9c25651862127bb8317";
      };
    }

    {
      name = "move-concurrently-1.0.1.tgz";
      path = fetchurl {
        name = "move-concurrently-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/move-concurrently/-/move-concurrently-1.0.1.tgz";
        sha1 = "be2c005fda32e0b29af1f05d7c4b33214c701f92";
      };
    }

    {
      name = "ms-2.0.0.tgz";
      path = fetchurl {
        name = "ms-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/ms/-/ms-2.0.0.tgz";
        sha1 = "5608aeadfc00be6c2901df5f9861788de0d597c8";
      };
    }

    {
      name = "ms-2.1.1.tgz";
      path = fetchurl {
        name = "ms-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ms/-/ms-2.1.1.tgz";
        sha1 = "30a5864eb3ebb0a66f2ebe6d727af06a09d86e0a";
      };
    }

    {
      name = "multicast-dns-service-types-1.1.0.tgz";
      path = fetchurl {
        name = "multicast-dns-service-types-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/multicast-dns-service-types/-/multicast-dns-service-types-1.1.0.tgz";
        sha1 = "899f11d9686e5e05cb91b35d5f0e63b773cfc901";
      };
    }

    {
      name = "multicast-dns-6.2.3.tgz";
      path = fetchurl {
        name = "multicast-dns-6.2.3.tgz";
        url  = "https://registry.yarnpkg.com/multicast-dns/-/multicast-dns-6.2.3.tgz";
        sha1 = "a0ec7bd9055c4282f790c3c82f4e28db3b31b229";
      };
    }

    {
      name = "mute-stream-0.0.7.tgz";
      path = fetchurl {
        name = "mute-stream-0.0.7.tgz";
        url  = "https://registry.yarnpkg.com/mute-stream/-/mute-stream-0.0.7.tgz";
        sha1 = "3075ce93bc21b8fab43e1bc4da7e8115ed1e7bab";
      };
    }

    {
      name = "nan-2.11.1.tgz";
      path = fetchurl {
        name = "nan-2.11.1.tgz";
        url  = "https://registry.yarnpkg.com/nan/-/nan-2.11.1.tgz";
        sha1 = "90e22bccb8ca57ea4cd37cc83d3819b52eea6766";
      };
    }

    {
      name = "nanomatch-1.2.13.tgz";
      path = fetchurl {
        name = "nanomatch-1.2.13.tgz";
        url  = "https://registry.yarnpkg.com/nanomatch/-/nanomatch-1.2.13.tgz";
        sha1 = "b87a8aa4fc0de8fe6be88895b38983ff265bd119";
      };
    }

    {
      name = "needle-2.2.4.tgz";
      path = fetchurl {
        name = "needle-2.2.4.tgz";
        url  = "https://registry.yarnpkg.com/needle/-/needle-2.2.4.tgz";
        sha1 = "51931bff82533b1928b7d1d69e01f1b00ffd2a4e";
      };
    }

    {
      name = "negotiator-0.6.1.tgz";
      path = fetchurl {
        name = "negotiator-0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/negotiator/-/negotiator-0.6.1.tgz";
        sha1 = "2b327184e8992101177b28563fb5e7102acd0ca9";
      };
    }

    {
      name = "neo-async-2.6.0.tgz";
      path = fetchurl {
        name = "neo-async-2.6.0.tgz";
        url  = "https://registry.yarnpkg.com/neo-async/-/neo-async-2.6.0.tgz";
        sha1 = "b9d15e4d71c6762908654b5183ed38b753340835";
      };
    }

    {
      name = "nice-try-1.0.5.tgz";
      path = fetchurl {
        name = "nice-try-1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/nice-try/-/nice-try-1.0.5.tgz";
        sha1 = "a3378a7696ce7d223e88fc9b764bd7ef1089e366";
      };
    }

    {
      name = "no-case-2.3.2.tgz";
      path = fetchurl {
        name = "no-case-2.3.2.tgz";
        url  = "https://registry.yarnpkg.com/no-case/-/no-case-2.3.2.tgz";
        sha1 = "60b813396be39b3f1288a4c1ed5d1e7d28b464ac";
      };
    }

    {
      name = "node-forge-0.7.5.tgz";
      path = fetchurl {
        name = "node-forge-0.7.5.tgz";
        url  = "https://registry.yarnpkg.com/node-forge/-/node-forge-0.7.5.tgz";
        sha1 = "6c152c345ce11c52f465c2abd957e8639cd674df";
      };
    }

    {
      name = "node-gyp-3.8.0.tgz";
      path = fetchurl {
        name = "node-gyp-3.8.0.tgz";
        url  = "https://registry.yarnpkg.com/node-gyp/-/node-gyp-3.8.0.tgz";
        sha1 = "540304261c330e80d0d5edce253a68cb3964218c";
      };
    }

    {
      name = "node-libs-browser-2.1.0.tgz";
      path = fetchurl {
        name = "node-libs-browser-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/node-libs-browser/-/node-libs-browser-2.1.0.tgz";
        sha1 = "5f94263d404f6e44767d726901fff05478d600df";
      };
    }

    {
      name = "node-pre-gyp-0.10.3.tgz";
      path = fetchurl {
        name = "node-pre-gyp-0.10.3.tgz";
        url  = "https://registry.yarnpkg.com/node-pre-gyp/-/node-pre-gyp-0.10.3.tgz";
        sha1 = "3070040716afdc778747b61b6887bf78880b80fc";
      };
    }

    {
      name = "node-sass-4.10.0.tgz";
      path = fetchurl {
        name = "node-sass-4.10.0.tgz";
        url  = "https://registry.yarnpkg.com/node-sass/-/node-sass-4.10.0.tgz";
        sha1 = "dcc2b364c0913630945ccbf7a2bbf1f926effca4";
      };
    }

    {
      name = "node-static-0.7.11.tgz";
      path = fetchurl {
        name = "node-static-0.7.11.tgz";
        url  = "https://registry.yarnpkg.com/node-static/-/node-static-0.7.11.tgz";
        sha1 = "60120d349f3cef533e4e820670057eb631882e7f";
      };
    }

    {
      name = "nopt-3.0.6.tgz";
      path = fetchurl {
        name = "nopt-3.0.6.tgz";
        url  = "https://registry.yarnpkg.com/nopt/-/nopt-3.0.6.tgz";
        sha1 = "c6465dbf08abcd4db359317f79ac68a646b28ff9";
      };
    }

    {
      name = "nopt-4.0.1.tgz";
      path = fetchurl {
        name = "nopt-4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/nopt/-/nopt-4.0.1.tgz";
        sha1 = "d0d4685afd5415193c8c7505602d0d17cd64474d";
      };
    }

    {
      name = "normalize-package-data-2.4.0.tgz";
      path = fetchurl {
        name = "normalize-package-data-2.4.0.tgz";
        url  = "https://registry.yarnpkg.com/normalize-package-data/-/normalize-package-data-2.4.0.tgz";
        sha1 = "12f95a307d58352075a04907b84ac8be98ac012f";
      };
    }

    {
      name = "normalize-path-2.1.1.tgz";
      path = fetchurl {
        name = "normalize-path-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/normalize-path/-/normalize-path-2.1.1.tgz";
        sha1 = "1ab28b556e198363a8c1a6f7e6fa20137fe6aed9";
      };
    }

    {
      name = "npm-bundled-1.0.5.tgz";
      path = fetchurl {
        name = "npm-bundled-1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/npm-bundled/-/npm-bundled-1.0.5.tgz";
        sha1 = "3c1732b7ba936b3a10325aef616467c0ccbcc979";
      };
    }

    {
      name = "npm-packlist-1.1.12.tgz";
      path = fetchurl {
        name = "npm-packlist-1.1.12.tgz";
        url  = "https://registry.yarnpkg.com/npm-packlist/-/npm-packlist-1.1.12.tgz";
        sha1 = "22bde2ebc12e72ca482abd67afc51eb49377243a";
      };
    }

    {
      name = "npm-run-path-2.0.2.tgz";
      path = fetchurl {
        name = "npm-run-path-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/npm-run-path/-/npm-run-path-2.0.2.tgz";
        sha1 = "35a9232dfa35d7067b4cb2ddf2357b1871536c5f";
      };
    }

    {
      name = "npmlog-4.1.2.tgz";
      path = fetchurl {
        name = "npmlog-4.1.2.tgz";
        url  = "https://registry.yarnpkg.com/npmlog/-/npmlog-4.1.2.tgz";
        sha1 = "08a7f2a8bf734604779a9efa4ad5cc717abb954b";
      };
    }

    {
      name = "nth-check-1.0.2.tgz";
      path = fetchurl {
        name = "nth-check-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/nth-check/-/nth-check-1.0.2.tgz";
        sha1 = "b2bd295c37e3dd58a3bf0700376663ba4d9cf05c";
      };
    }

    {
      name = "number-is-nan-1.0.1.tgz";
      path = fetchurl {
        name = "number-is-nan-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/number-is-nan/-/number-is-nan-1.0.1.tgz";
        sha1 = "097b602b53422a522c1afb8790318336941a011d";
      };
    }

    {
      name = "oauth-sign-0.9.0.tgz";
      path = fetchurl {
        name = "oauth-sign-0.9.0.tgz";
        url  = "https://registry.yarnpkg.com/oauth-sign/-/oauth-sign-0.9.0.tgz";
        sha1 = "47a7b016baa68b5fa0ecf3dee08a85c679ac6455";
      };
    }

    {
      name = "object-assign-4.1.1.tgz";
      path = fetchurl {
        name = "object-assign-4.1.1.tgz";
        url  = "https://registry.yarnpkg.com/object-assign/-/object-assign-4.1.1.tgz";
        sha1 = "2109adc7965887cfc05cbbd442cac8bfbb360863";
      };
    }

    {
      name = "object-copy-0.1.0.tgz";
      path = fetchurl {
        name = "object-copy-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/object-copy/-/object-copy-0.1.0.tgz";
        sha1 = "7e7d858b781bd7c991a41ba975ed3812754e998c";
      };
    }

    {
      name = "object-keys-1.0.12.tgz";
      path = fetchurl {
        name = "object-keys-1.0.12.tgz";
        url  = "https://registry.yarnpkg.com/object-keys/-/object-keys-1.0.12.tgz";
        sha1 = "09c53855377575310cca62f55bb334abff7b3ed2";
      };
    }

    {
      name = "object-visit-1.0.1.tgz";
      path = fetchurl {
        name = "object-visit-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/object-visit/-/object-visit-1.0.1.tgz";
        sha1 = "f79c4493af0c5377b59fe39d395e41042dd045bb";
      };
    }

    {
      name = "object.getownpropertydescriptors-2.0.3.tgz";
      path = fetchurl {
        name = "object.getownpropertydescriptors-2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/object.getownpropertydescriptors/-/object.getownpropertydescriptors-2.0.3.tgz";
        sha1 = "8758c846f5b407adab0f236e0986f14b051caa16";
      };
    }

    {
      name = "object.pick-1.3.0.tgz";
      path = fetchurl {
        name = "object.pick-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/object.pick/-/object.pick-1.3.0.tgz";
        sha1 = "87a10ac4c1694bd2e1cbf53591a66141fb5dd747";
      };
    }

    {
      name = "obuf-1.1.2.tgz";
      path = fetchurl {
        name = "obuf-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/obuf/-/obuf-1.1.2.tgz";
        sha1 = "09bea3343d41859ebd446292d11c9d4db619084e";
      };
    }

    {
      name = "on-finished-2.3.0.tgz";
      path = fetchurl {
        name = "on-finished-2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/on-finished/-/on-finished-2.3.0.tgz";
        sha1 = "20f1336481b083cd75337992a16971aa2d906947";
      };
    }

    {
      name = "on-headers-1.0.1.tgz";
      path = fetchurl {
        name = "on-headers-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/on-headers/-/on-headers-1.0.1.tgz";
        sha1 = "928f5d0f470d49342651ea6794b0857c100693f7";
      };
    }

    {
      name = "once-1.4.0.tgz";
      path = fetchurl {
        name = "once-1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/once/-/once-1.4.0.tgz";
        sha1 = "583b1aa775961d4b113ac17d9c50baef9dd76bd1";
      };
    }

    {
      name = "opn-5.4.0.tgz";
      path = fetchurl {
        name = "opn-5.4.0.tgz";
        url  = "https://registry.yarnpkg.com/opn/-/opn-5.4.0.tgz";
        sha1 = "cb545e7aab78562beb11aa3bfabc7042e1761035";
      };
    }

    {
      name = "optimist-0.6.1.tgz";
      path = fetchurl {
        name = "optimist-0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/optimist/-/optimist-0.6.1.tgz";
        sha1 = "da3ea74686fa21a19a111c326e90eb15a0196686";
      };
    }

    {
      name = "original-1.0.2.tgz";
      path = fetchurl {
        name = "original-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/original/-/original-1.0.2.tgz";
        sha1 = "e442a61cffe1c5fd20a65f3261c26663b303f25f";
      };
    }

    {
      name = "os-browserify-0.3.0.tgz";
      path = fetchurl {
        name = "os-browserify-0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/os-browserify/-/os-browserify-0.3.0.tgz";
        sha1 = "854373c7f5c2315914fc9bfc6bd8238fdda1ec27";
      };
    }

    {
      name = "os-browserify-0.1.2.tgz";
      path = fetchurl {
        name = "os-browserify-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/os-browserify/-/os-browserify-0.1.2.tgz";
        sha1 = "49ca0293e0b19590a5f5de10c7f265a617d8fe54";
      };
    }

    {
      name = "os-homedir-1.0.2.tgz";
      path = fetchurl {
        name = "os-homedir-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/os-homedir/-/os-homedir-1.0.2.tgz";
        sha1 = "ffbc4988336e0e833de0c168c7ef152121aa7fb3";
      };
    }

    {
      name = "os-locale-1.4.0.tgz";
      path = fetchurl {
        name = "os-locale-1.4.0.tgz";
        url  = "http://registry.npmjs.org/os-locale/-/os-locale-1.4.0.tgz";
        sha1 = "20f9f17ae29ed345e8bde583b13d2009803c14d9";
      };
    }

    {
      name = "os-locale-3.0.1.tgz";
      path = fetchurl {
        name = "os-locale-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/os-locale/-/os-locale-3.0.1.tgz";
        sha1 = "3b014fbf01d87f60a1e5348d80fe870dc82c4620";
      };
    }

    {
      name = "os-tmpdir-1.0.2.tgz";
      path = fetchurl {
        name = "os-tmpdir-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/os-tmpdir/-/os-tmpdir-1.0.2.tgz";
        sha1 = "bbe67406c79aa85c5cfec766fe5734555dfa1274";
      };
    }

    {
      name = "osenv-0.1.5.tgz";
      path = fetchurl {
        name = "osenv-0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/osenv/-/osenv-0.1.5.tgz";
        sha1 = "85cdfafaeb28e8677f416e287592b5f3f49ea410";
      };
    }

    {
      name = "p-defer-1.0.0.tgz";
      path = fetchurl {
        name = "p-defer-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/p-defer/-/p-defer-1.0.0.tgz";
        sha1 = "9f6eb182f6c9aa8cd743004a7d4f96b196b0fb0c";
      };
    }

    {
      name = "p-finally-1.0.0.tgz";
      path = fetchurl {
        name = "p-finally-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/p-finally/-/p-finally-1.0.0.tgz";
        sha1 = "3fbcfb15b899a44123b34b6dcc18b724336a2cae";
      };
    }

    {
      name = "p-is-promise-1.1.0.tgz";
      path = fetchurl {
        name = "p-is-promise-1.1.0.tgz";
        url  = "http://registry.npmjs.org/p-is-promise/-/p-is-promise-1.1.0.tgz";
        sha1 = "9c9456989e9f6588017b0434d56097675c3da05e";
      };
    }

    {
      name = "p-limit-2.0.0.tgz";
      path = fetchurl {
        name = "p-limit-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/p-limit/-/p-limit-2.0.0.tgz";
        sha1 = "e624ed54ee8c460a778b3c9f3670496ff8a57aec";
      };
    }

    {
      name = "p-locate-3.0.0.tgz";
      path = fetchurl {
        name = "p-locate-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/p-locate/-/p-locate-3.0.0.tgz";
        sha1 = "322d69a05c0264b25997d9f40cd8a891ab0064a4";
      };
    }

    {
      name = "p-map-1.2.0.tgz";
      path = fetchurl {
        name = "p-map-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/p-map/-/p-map-1.2.0.tgz";
        sha1 = "e4e94f311eabbc8633a1e79908165fca26241b6b";
      };
    }

    {
      name = "p-try-2.0.0.tgz";
      path = fetchurl {
        name = "p-try-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/p-try/-/p-try-2.0.0.tgz";
        sha1 = "85080bb87c64688fa47996fe8f7dfbe8211760b1";
      };
    }

    {
      name = "pako-0.2.9.tgz";
      path = fetchurl {
        name = "pako-0.2.9.tgz";
        url  = "https://registry.yarnpkg.com/pako/-/pako-0.2.9.tgz";
        sha1 = "f3f7522f4ef782348da8161bad9ecfd51bf83a75";
      };
    }

    {
      name = "pako-1.0.6.tgz";
      path = fetchurl {
        name = "pako-1.0.6.tgz";
        url  = "https://registry.yarnpkg.com/pako/-/pako-1.0.6.tgz";
        sha1 = "0101211baa70c4bca4a0f63f2206e97b7dfaf258";
      };
    }

    {
      name = "parallel-transform-1.1.0.tgz";
      path = fetchurl {
        name = "parallel-transform-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/parallel-transform/-/parallel-transform-1.1.0.tgz";
        sha1 = "d410f065b05da23081fcd10f28854c29bda33b06";
      };
    }

    {
      name = "param-case-2.1.1.tgz";
      path = fetchurl {
        name = "param-case-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/param-case/-/param-case-2.1.1.tgz";
        sha1 = "df94fd8cf6531ecf75e6bef9a0858fbc72be2247";
      };
    }

    {
      name = "parents-1.0.1.tgz";
      path = fetchurl {
        name = "parents-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/parents/-/parents-1.0.1.tgz";
        sha1 = "fedd4d2bf193a77745fe71e371d73c3307d9c751";
      };
    }

    {
      name = "parse-asn1-5.1.1.tgz";
      path = fetchurl {
        name = "parse-asn1-5.1.1.tgz";
        url  = "https://registry.yarnpkg.com/parse-asn1/-/parse-asn1-5.1.1.tgz";
        sha1 = "f6bf293818332bd0dab54efb16087724745e6ca8";
      };
    }

    {
      name = "parse-json-2.2.0.tgz";
      path = fetchurl {
        name = "parse-json-2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/parse-json/-/parse-json-2.2.0.tgz";
        sha1 = "f480f40434ef80741f8469099f8dea18f55a4dc9";
      };
    }

    {
      name = "parseurl-1.3.2.tgz";
      path = fetchurl {
        name = "parseurl-1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/parseurl/-/parseurl-1.3.2.tgz";
        sha1 = "fc289d4ed8993119460c156253262cdc8de65bf3";
      };
    }

    {
      name = "pascalcase-0.1.1.tgz";
      path = fetchurl {
        name = "pascalcase-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/pascalcase/-/pascalcase-0.1.1.tgz";
        sha1 = "b363e55e8006ca6fe21784d2db22bd15d7917f14";
      };
    }

    {
      name = "path-browserify-0.0.0.tgz";
      path = fetchurl {
        name = "path-browserify-0.0.0.tgz";
        url  = "https://registry.yarnpkg.com/path-browserify/-/path-browserify-0.0.0.tgz";
        sha1 = "a0b870729aae214005b7d5032ec2cbbb0fb4451a";
      };
    }

    {
      name = "path-browserify-0.0.1.tgz";
      path = fetchurl {
        name = "path-browserify-0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/path-browserify/-/path-browserify-0.0.1.tgz";
        sha1 = "e6c4ddd7ed3aa27c68a20cc4e50e1a4ee83bbc4a";
      };
    }

    {
      name = "path-dirname-1.0.2.tgz";
      path = fetchurl {
        name = "path-dirname-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/path-dirname/-/path-dirname-1.0.2.tgz";
        sha1 = "cc33d24d525e099a5388c0336c6e32b9160609e0";
      };
    }

    {
      name = "path-exists-2.1.0.tgz";
      path = fetchurl {
        name = "path-exists-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/path-exists/-/path-exists-2.1.0.tgz";
        sha1 = "0feb6c64f0fc518d9a754dd5efb62c7022761f4b";
      };
    }

    {
      name = "path-exists-3.0.0.tgz";
      path = fetchurl {
        name = "path-exists-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/path-exists/-/path-exists-3.0.0.tgz";
        sha1 = "ce0ebeaa5f78cb18925ea7d810d7b59b010fd515";
      };
    }

    {
      name = "path-is-absolute-1.0.1.tgz";
      path = fetchurl {
        name = "path-is-absolute-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
        sha1 = "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f";
      };
    }

    {
      name = "path-is-inside-1.0.2.tgz";
      path = fetchurl {
        name = "path-is-inside-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/path-is-inside/-/path-is-inside-1.0.2.tgz";
        sha1 = "365417dede44430d1c11af61027facf074bdfc53";
      };
    }

    {
      name = "path-key-2.0.1.tgz";
      path = fetchurl {
        name = "path-key-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/path-key/-/path-key-2.0.1.tgz";
        sha1 = "411cadb574c5a140d3a4b1910d40d80cc9f40b40";
      };
    }

    {
      name = "path-parse-1.0.6.tgz";
      path = fetchurl {
        name = "path-parse-1.0.6.tgz";
        url  = "https://registry.yarnpkg.com/path-parse/-/path-parse-1.0.6.tgz";
        sha1 = "d62dbb5679405d72c4737ec58600e9ddcf06d24c";
      };
    }

    {
      name = "path-platform-0.11.15.tgz";
      path = fetchurl {
        name = "path-platform-0.11.15.tgz";
        url  = "https://registry.yarnpkg.com/path-platform/-/path-platform-0.11.15.tgz";
        sha1 = "e864217f74c36850f0852b78dc7bf7d4a5721bf2";
      };
    }

    {
      name = "path-to-regexp-0.1.7.tgz";
      path = fetchurl {
        name = "path-to-regexp-0.1.7.tgz";
        url  = "https://registry.yarnpkg.com/path-to-regexp/-/path-to-regexp-0.1.7.tgz";
        sha1 = "df604178005f522f15eb4490e7247a1bfaa67f8c";
      };
    }

    {
      name = "path-type-1.1.0.tgz";
      path = fetchurl {
        name = "path-type-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/path-type/-/path-type-1.1.0.tgz";
        sha1 = "59c44f7ee491da704da415da5a4070ba4f8fe441";
      };
    }

    {
      name = "pbkdf2-3.0.17.tgz";
      path = fetchurl {
        name = "pbkdf2-3.0.17.tgz";
        url  = "https://registry.yarnpkg.com/pbkdf2/-/pbkdf2-3.0.17.tgz";
        sha1 = "976c206530617b14ebb32114239f7b09336e93a6";
      };
    }

    {
      name = "performance-now-2.1.0.tgz";
      path = fetchurl {
        name = "performance-now-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/performance-now/-/performance-now-2.1.0.tgz";
        sha1 = "6309f4e0e5fa913ec1c69307ae364b4b377c9e7b";
      };
    }

    {
      name = "pify-2.3.0.tgz";
      path = fetchurl {
        name = "pify-2.3.0.tgz";
        url  = "http://registry.npmjs.org/pify/-/pify-2.3.0.tgz";
        sha1 = "ed141a6ac043a849ea588498e7dca8b15330e90c";
      };
    }

    {
      name = "pify-3.0.0.tgz";
      path = fetchurl {
        name = "pify-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/pify/-/pify-3.0.0.tgz";
        sha1 = "e5a4acd2c101fdf3d9a4d07f0dbc4db49dd28176";
      };
    }

    {
      name = "pinkie-promise-2.0.1.tgz";
      path = fetchurl {
        name = "pinkie-promise-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/pinkie-promise/-/pinkie-promise-2.0.1.tgz";
        sha1 = "2135d6dfa7a358c069ac9b178776288228450ffa";
      };
    }

    {
      name = "pinkie-2.0.4.tgz";
      path = fetchurl {
        name = "pinkie-2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/pinkie/-/pinkie-2.0.4.tgz";
        sha1 = "72556b80cfa0d48a974e80e77248e80ed4f7f870";
      };
    }

    {
      name = "pkg-dir-3.0.0.tgz";
      path = fetchurl {
        name = "pkg-dir-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/pkg-dir/-/pkg-dir-3.0.0.tgz";
        sha1 = "2749020f239ed990881b1f71210d51eb6523bea3";
      };
    }

    {
      name = "popper.js-1.14.5.tgz";
      path = fetchurl {
        name = "popper.js-1.14.5.tgz";
        url  = "https://registry.yarnpkg.com/popper.js/-/popper.js-1.14.5.tgz";
        sha1 = "98abcce7c7c34c4ee47fcbc6b3da8af2c0a127bc";
      };
    }

    {
      name = "portfinder-1.0.19.tgz";
      path = fetchurl {
        name = "portfinder-1.0.19.tgz";
        url  = "https://registry.yarnpkg.com/portfinder/-/portfinder-1.0.19.tgz";
        sha1 = "07e87914a55242dcda5b833d42f018d6875b595f";
      };
    }

    {
      name = "posix-character-classes-0.1.1.tgz";
      path = fetchurl {
        name = "posix-character-classes-0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/posix-character-classes/-/posix-character-classes-0.1.1.tgz";
        sha1 = "01eac0fe3b5af71a2a6c02feabb8c1fef7e00eab";
      };
    }

    {
      name = "postcss-modules-extract-imports-1.2.1.tgz";
      path = fetchurl {
        name = "postcss-modules-extract-imports-1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/postcss-modules-extract-imports/-/postcss-modules-extract-imports-1.2.1.tgz";
        sha1 = "dc87e34148ec7eab5f791f7cd5849833375b741a";
      };
    }

    {
      name = "postcss-modules-local-by-default-1.2.0.tgz";
      path = fetchurl {
        name = "postcss-modules-local-by-default-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/postcss-modules-local-by-default/-/postcss-modules-local-by-default-1.2.0.tgz";
        sha1 = "f7d80c398c5a393fa7964466bd19500a7d61c069";
      };
    }

    {
      name = "postcss-modules-scope-1.1.0.tgz";
      path = fetchurl {
        name = "postcss-modules-scope-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/postcss-modules-scope/-/postcss-modules-scope-1.1.0.tgz";
        sha1 = "d6ea64994c79f97b62a72b426fbe6056a194bb90";
      };
    }

    {
      name = "postcss-modules-values-1.3.0.tgz";
      path = fetchurl {
        name = "postcss-modules-values-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/postcss-modules-values/-/postcss-modules-values-1.3.0.tgz";
        sha1 = "ecffa9d7e192518389f42ad0e83f72aec456ea20";
      };
    }

    {
      name = "postcss-value-parser-3.3.1.tgz";
      path = fetchurl {
        name = "postcss-value-parser-3.3.1.tgz";
        url  = "https://registry.yarnpkg.com/postcss-value-parser/-/postcss-value-parser-3.3.1.tgz";
        sha1 = "9ff822547e2893213cf1c30efa51ac5fd1ba8281";
      };
    }

    {
      name = "postcss-6.0.23.tgz";
      path = fetchurl {
        name = "postcss-6.0.23.tgz";
        url  = "https://registry.yarnpkg.com/postcss/-/postcss-6.0.23.tgz";
        sha1 = "61c82cc328ac60e677645f979054eb98bc0e3324";
      };
    }

    {
      name = "pretty-error-2.1.1.tgz";
      path = fetchurl {
        name = "pretty-error-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/pretty-error/-/pretty-error-2.1.1.tgz";
        sha1 = "5f4f87c8f91e5ae3f3ba87ab4cf5e03b1a17f1a3";
      };
    }

    {
      name = "process-nextick-args-1.0.7.tgz";
      path = fetchurl {
        name = "process-nextick-args-1.0.7.tgz";
        url  = "https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-1.0.7.tgz";
        sha1 = "150e20b756590ad3f91093f25a4f2ad8bff30ba3";
      };
    }

    {
      name = "process-nextick-args-2.0.0.tgz";
      path = fetchurl {
        name = "process-nextick-args-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-2.0.0.tgz";
        sha1 = "a37d732f4271b4ab1ad070d35508e8290788ffaa";
      };
    }

    {
      name = "process-0.11.10.tgz";
      path = fetchurl {
        name = "process-0.11.10.tgz";
        url  = "https://registry.yarnpkg.com/process/-/process-0.11.10.tgz";
        sha1 = "7332300e840161bda3e69a1d1d91a7d4bc16f182";
      };
    }

    {
      name = "promise-inflight-1.0.1.tgz";
      path = fetchurl {
        name = "promise-inflight-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/promise-inflight/-/promise-inflight-1.0.1.tgz";
        sha1 = "98472870bf228132fcbdd868129bad12c3c029e3";
      };
    }

    {
      name = "promise-retry-1.1.1.tgz";
      path = fetchurl {
        name = "promise-retry-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/promise-retry/-/promise-retry-1.1.1.tgz";
        sha1 = "6739e968e3051da20ce6497fb2b50f6911df3d6d";
      };
    }

    {
      name = "proxy-addr-2.0.4.tgz";
      path = fetchurl {
        name = "proxy-addr-2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/proxy-addr/-/proxy-addr-2.0.4.tgz";
        sha1 = "ecfc733bf22ff8c6f407fa275327b9ab67e48b93";
      };
    }

    {
      name = "prr-1.0.1.tgz";
      path = fetchurl {
        name = "prr-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/prr/-/prr-1.0.1.tgz";
        sha1 = "d3fc114ba06995a45ec6893f484ceb1d78f5f476";
      };
    }

    {
      name = "pseudomap-1.0.2.tgz";
      path = fetchurl {
        name = "pseudomap-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/pseudomap/-/pseudomap-1.0.2.tgz";
        sha1 = "f052a28da70e618917ef0a8ac34c1ae5a68286b3";
      };
    }

    {
      name = "psl-1.1.29.tgz";
      path = fetchurl {
        name = "psl-1.1.29.tgz";
        url  = "https://registry.yarnpkg.com/psl/-/psl-1.1.29.tgz";
        sha1 = "60f580d360170bb722a797cc704411e6da850c67";
      };
    }

    {
      name = "public-encrypt-4.0.3.tgz";
      path = fetchurl {
        name = "public-encrypt-4.0.3.tgz";
        url  = "https://registry.yarnpkg.com/public-encrypt/-/public-encrypt-4.0.3.tgz";
        sha1 = "4fcc9d77a07e48ba7527e7cbe0de33d0701331e0";
      };
    }

    {
      name = "pulp-12.3.0.tgz";
      path = fetchurl {
        name = "pulp-12.3.0.tgz";
        url  = "https://registry.yarnpkg.com/pulp/-/pulp-12.3.0.tgz";
        sha1 = "8721b8528ef55816384360c2e63f04be0fd447a1";
      };
    }

    {
      name = "pump-2.0.1.tgz";
      path = fetchurl {
        name = "pump-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/pump/-/pump-2.0.1.tgz";
        sha1 = "12399add6e4cf7526d973cbc8b5ce2e2908b3909";
      };
    }

    {
      name = "pump-3.0.0.tgz";
      path = fetchurl {
        name = "pump-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/pump/-/pump-3.0.0.tgz";
        sha1 = "b4a2116815bde2f4e1ea602354e8c75565107a64";
      };
    }

    {
      name = "pumpify-1.5.1.tgz";
      path = fetchurl {
        name = "pumpify-1.5.1.tgz";
        url  = "https://registry.yarnpkg.com/pumpify/-/pumpify-1.5.1.tgz";
        sha1 = "36513be246ab27570b1a374a5ce278bfd74370ce";
      };
    }

    {
      name = "punycode-1.3.2.tgz";
      path = fetchurl {
        name = "punycode-1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/punycode/-/punycode-1.3.2.tgz";
        sha1 = "9653a036fb7c1ee42342f2325cceefea3926c48d";
      };
    }

    {
      name = "punycode-1.4.1.tgz";
      path = fetchurl {
        name = "punycode-1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/punycode/-/punycode-1.4.1.tgz";
        sha1 = "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e";
      };
    }

    {
      name = "punycode-2.1.1.tgz";
      path = fetchurl {
        name = "punycode-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/punycode/-/punycode-2.1.1.tgz";
        sha1 = "b58b010ac40c22c5657616c8d2c2c02c7bf479ec";
      };
    }

    {
      name = "purescript-psa-0.7.3.tgz";
      path = fetchurl {
        name = "purescript-psa-0.7.3.tgz";
        url  = "https://registry.yarnpkg.com/purescript-psa/-/purescript-psa-0.7.3.tgz";
        sha1 = "0e1ff29cbd6a0fe2429717e7147d0c1cbd4760a9";
      };
    }

    {
      name = "purs-loader-3.3.0.tgz";
      path = fetchurl {
        name = "purs-loader-3.3.0.tgz";
        url  = "https://registry.yarnpkg.com/purs-loader/-/purs-loader-3.3.0.tgz";
        sha1 = "70e76a895ae41e5729631a202305bebfe8970a7c";
      };
    }

    {
      name = "qs-6.5.2.tgz";
      path = fetchurl {
        name = "qs-6.5.2.tgz";
        url  = "https://registry.yarnpkg.com/qs/-/qs-6.5.2.tgz";
        sha1 = "cb3ae806e8740444584ef154ce8ee98d403f3e36";
      };
    }

    {
      name = "querystring-es3-0.2.1.tgz";
      path = fetchurl {
        name = "querystring-es3-0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/querystring-es3/-/querystring-es3-0.2.1.tgz";
        sha1 = "9ec61f79049875707d69414596fd907a4d711e73";
      };
    }

    {
      name = "querystring-0.2.0.tgz";
      path = fetchurl {
        name = "querystring-0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/querystring/-/querystring-0.2.0.tgz";
        sha1 = "b209849203bb25df820da756e747005878521620";
      };
    }

    {
      name = "querystringify-2.1.0.tgz";
      path = fetchurl {
        name = "querystringify-2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/querystringify/-/querystringify-2.1.0.tgz";
        sha1 = "7ded8dfbf7879dcc60d0a644ac6754b283ad17ef";
      };
    }

    {
      name = "randombytes-2.0.6.tgz";
      path = fetchurl {
        name = "randombytes-2.0.6.tgz";
        url  = "https://registry.yarnpkg.com/randombytes/-/randombytes-2.0.6.tgz";
        sha1 = "d302c522948588848a8d300c932b44c24231da80";
      };
    }

    {
      name = "randomfill-1.0.4.tgz";
      path = fetchurl {
        name = "randomfill-1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/randomfill/-/randomfill-1.0.4.tgz";
        sha1 = "c92196fc86ab42be983f1bf31778224931d61458";
      };
    }

    {
      name = "range-parser-1.2.0.tgz";
      path = fetchurl {
        name = "range-parser-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/range-parser/-/range-parser-1.2.0.tgz";
        sha1 = "f49be6b487894ddc40dcc94a322f611092e00d5e";
      };
    }

    {
      name = "raw-body-2.3.3.tgz";
      path = fetchurl {
        name = "raw-body-2.3.3.tgz";
        url  = "https://registry.yarnpkg.com/raw-body/-/raw-body-2.3.3.tgz";
        sha1 = "1b324ece6b5706e153855bc1148c65bb7f6ea0c3";
      };
    }

    {
      name = "rc-1.2.8.tgz";
      path = fetchurl {
        name = "rc-1.2.8.tgz";
        url  = "https://registry.yarnpkg.com/rc/-/rc-1.2.8.tgz";
        sha1 = "cd924bf5200a075b83c188cd6b9e211b7fc0d3ed";
      };
    }

    {
      name = "read-only-stream-2.0.0.tgz";
      path = fetchurl {
        name = "read-only-stream-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/read-only-stream/-/read-only-stream-2.0.0.tgz";
        sha1 = "2724fd6a8113d73764ac288d4386270c1dbf17f0";
      };
    }

    {
      name = "read-pkg-up-1.0.1.tgz";
      path = fetchurl {
        name = "read-pkg-up-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/read-pkg-up/-/read-pkg-up-1.0.1.tgz";
        sha1 = "9d63c13276c065918d57f002a57f40a1b643fb02";
      };
    }

    {
      name = "read-pkg-1.1.0.tgz";
      path = fetchurl {
        name = "read-pkg-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/read-pkg/-/read-pkg-1.1.0.tgz";
        sha1 = "f5ffaa5ecd29cb31c0474bca7d756b6bb29e3f28";
      };
    }

    {
      name = "read-1.0.7.tgz";
      path = fetchurl {
        name = "read-1.0.7.tgz";
        url  = "https://registry.yarnpkg.com/read/-/read-1.0.7.tgz";
        sha1 = "b3da19bd052431a97671d44a42634adf710b40c4";
      };
    }

    {
      name = "readable-stream-2.3.6.tgz";
      path = fetchurl {
        name = "readable-stream-2.3.6.tgz";
        url  = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.3.6.tgz";
        sha1 = "b11c27d88b8ff1fbe070643cf94b0c79ae1b0aaf";
      };
    }

    {
      name = "readable-stream-1.0.34.tgz";
      path = fetchurl {
        name = "readable-stream-1.0.34.tgz";
        url  = "http://registry.npmjs.org/readable-stream/-/readable-stream-1.0.34.tgz";
        sha1 = "125820e34bc842d2f2aaafafe4c2916ee32c157c";
      };
    }

    {
      name = "readable-stream-2.0.6.tgz";
      path = fetchurl {
        name = "readable-stream-2.0.6.tgz";
        url  = "http://registry.npmjs.org/readable-stream/-/readable-stream-2.0.6.tgz";
        sha1 = "8f90341e68a53ccc928788dacfcd11b36eb9b78e";
      };
    }

    {
      name = "readdirp-2.2.1.tgz";
      path = fetchurl {
        name = "readdirp-2.2.1.tgz";
        url  = "https://registry.yarnpkg.com/readdirp/-/readdirp-2.2.1.tgz";
        sha1 = "0e87622a3325aa33e892285caf8b4e846529a525";
      };
    }

    {
      name = "redent-1.0.0.tgz";
      path = fetchurl {
        name = "redent-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/redent/-/redent-1.0.0.tgz";
        sha1 = "cf916ab1fd5f1f16dfb20822dd6ec7f730c2afde";
      };
    }

    {
      name = "regenerate-1.4.0.tgz";
      path = fetchurl {
        name = "regenerate-1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/regenerate/-/regenerate-1.4.0.tgz";
        sha1 = "4a856ec4b56e4077c557589cae85e7a4c8869a11";
      };
    }

    {
      name = "regex-not-1.0.2.tgz";
      path = fetchurl {
        name = "regex-not-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/regex-not/-/regex-not-1.0.2.tgz";
        sha1 = "1f4ece27e00b0b65e0247a6810e6a85d83a5752c";
      };
    }

    {
      name = "regexpu-core-1.0.0.tgz";
      path = fetchurl {
        name = "regexpu-core-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/regexpu-core/-/regexpu-core-1.0.0.tgz";
        sha1 = "86a763f58ee4d7c2f6b102e4764050de7ed90c6b";
      };
    }

    {
      name = "regjsgen-0.2.0.tgz";
      path = fetchurl {
        name = "regjsgen-0.2.0.tgz";
        url  = "http://registry.npmjs.org/regjsgen/-/regjsgen-0.2.0.tgz";
        sha1 = "6c016adeac554f75823fe37ac05b92d5a4edb1f7";
      };
    }

    {
      name = "regjsparser-0.1.5.tgz";
      path = fetchurl {
        name = "regjsparser-0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/regjsparser/-/regjsparser-0.1.5.tgz";
        sha1 = "7ee8f84dc6fa792d3fd0ae228d24bd949ead205c";
      };
    }

    {
      name = "relateurl-0.2.7.tgz";
      path = fetchurl {
        name = "relateurl-0.2.7.tgz";
        url  = "https://registry.yarnpkg.com/relateurl/-/relateurl-0.2.7.tgz";
        sha1 = "54dbf377e51440aca90a4cd274600d3ff2d888a9";
      };
    }

    {
      name = "remove-trailing-separator-1.1.0.tgz";
      path = fetchurl {
        name = "remove-trailing-separator-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/remove-trailing-separator/-/remove-trailing-separator-1.1.0.tgz";
        sha1 = "c24bce2a283adad5bc3f58e0d48249b92379d8ef";
      };
    }

    {
      name = "renderkid-2.0.2.tgz";
      path = fetchurl {
        name = "renderkid-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/renderkid/-/renderkid-2.0.2.tgz";
        sha1 = "12d310f255360c07ad8fde253f6c9e9de372d2aa";
      };
    }

    {
      name = "repeat-element-1.1.3.tgz";
      path = fetchurl {
        name = "repeat-element-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/repeat-element/-/repeat-element-1.1.3.tgz";
        sha1 = "782e0d825c0c5a3bb39731f84efee6b742e6b1ce";
      };
    }

    {
      name = "repeat-string-1.6.1.tgz";
      path = fetchurl {
        name = "repeat-string-1.6.1.tgz";
        url  = "https://registry.yarnpkg.com/repeat-string/-/repeat-string-1.6.1.tgz";
        sha1 = "8dcae470e1c88abc2d600fff4a776286da75e637";
      };
    }

    {
      name = "repeating-2.0.1.tgz";
      path = fetchurl {
        name = "repeating-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/repeating/-/repeating-2.0.1.tgz";
        sha1 = "5214c53a926d3552707527fbab415dbc08d06dda";
      };
    }

    {
      name = "request-2.88.0.tgz";
      path = fetchurl {
        name = "request-2.88.0.tgz";
        url  = "https://registry.yarnpkg.com/request/-/request-2.88.0.tgz";
        sha1 = "9c2fca4f7d35b592efe57c7f0a55e81052124fef";
      };
    }

    {
      name = "require-directory-2.1.1.tgz";
      path = fetchurl {
        name = "require-directory-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/require-directory/-/require-directory-2.1.1.tgz";
        sha1 = "8c64ad5fd30dab1c976e2344ffe7f792a6a6df42";
      };
    }

    {
      name = "require-main-filename-1.0.1.tgz";
      path = fetchurl {
        name = "require-main-filename-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/require-main-filename/-/require-main-filename-1.0.1.tgz";
        sha1 = "97f717b69d48784f5f526a6c5aa8ffdda055a4d1";
      };
    }

    {
      name = "requires-port-1.0.0.tgz";
      path = fetchurl {
        name = "requires-port-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/requires-port/-/requires-port-1.0.0.tgz";
        sha1 = "925d2601d39ac485e091cf0da5c6e694dc3dcaff";
      };
    }

    {
      name = "resolve-cwd-2.0.0.tgz";
      path = fetchurl {
        name = "resolve-cwd-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/resolve-cwd/-/resolve-cwd-2.0.0.tgz";
        sha1 = "00a9f7387556e27038eae232caa372a6a59b665a";
      };
    }

    {
      name = "resolve-from-3.0.0.tgz";
      path = fetchurl {
        name = "resolve-from-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/resolve-from/-/resolve-from-3.0.0.tgz";
        sha1 = "b22c7af7d9d6881bc8b6e653335eebcb0a188748";
      };
    }

    {
      name = "resolve-url-0.2.1.tgz";
      path = fetchurl {
        name = "resolve-url-0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/resolve-url/-/resolve-url-0.2.1.tgz";
        sha1 = "2c637fe77c893afd2a663fe21aa9080068e2052a";
      };
    }

    {
      name = "resolve-1.1.7.tgz";
      path = fetchurl {
        name = "resolve-1.1.7.tgz";
        url  = "https://registry.yarnpkg.com/resolve/-/resolve-1.1.7.tgz";
        sha1 = "203114d82ad2c5ed9e8e0411b3932875e889e97b";
      };
    }

    {
      name = "resolve-1.8.1.tgz";
      path = fetchurl {
        name = "resolve-1.8.1.tgz";
        url  = "https://registry.yarnpkg.com/resolve/-/resolve-1.8.1.tgz";
        sha1 = "82f1ec19a423ac1fbd080b0bab06ba36e84a7a26";
      };
    }

    {
      name = "ret-0.1.15.tgz";
      path = fetchurl {
        name = "ret-0.1.15.tgz";
        url  = "https://registry.yarnpkg.com/ret/-/ret-0.1.15.tgz";
        sha1 = "b8a4825d5bdb1fc3f6f53c2bc33f81388681c7bc";
      };
    }

    {
      name = "retry-0.10.1.tgz";
      path = fetchurl {
        name = "retry-0.10.1.tgz";
        url  = "https://registry.yarnpkg.com/retry/-/retry-0.10.1.tgz";
        sha1 = "e76388d217992c252750241d3d3956fed98d8ff4";
      };
    }

    {
      name = "rimraf-2.6.2.tgz";
      path = fetchurl {
        name = "rimraf-2.6.2.tgz";
        url  = "https://registry.yarnpkg.com/rimraf/-/rimraf-2.6.2.tgz";
        sha1 = "2ed8150d24a16ea8651e6d6ef0f47c4158ce7a36";
      };
    }

    {
      name = "rimraf-2.2.8.tgz";
      path = fetchurl {
        name = "rimraf-2.2.8.tgz";
        url  = "http://registry.npmjs.org/rimraf/-/rimraf-2.2.8.tgz";
        sha1 = "e439be2aaee327321952730f99a8929e4fc50582";
      };
    }

    {
      name = "ripemd160-2.0.2.tgz";
      path = fetchurl {
        name = "ripemd160-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/ripemd160/-/ripemd160-2.0.2.tgz";
        sha1 = "a1c1a6f624751577ba5d07914cbc92850585890c";
      };
    }

    {
      name = "run-queue-1.0.3.tgz";
      path = fetchurl {
        name = "run-queue-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/run-queue/-/run-queue-1.0.3.tgz";
        sha1 = "e848396f057d223f24386924618e25694161ec47";
      };
    }

    {
      name = "safe-buffer-5.1.2.tgz";
      path = fetchurl {
        name = "safe-buffer-5.1.2.tgz";
        url  = "https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.1.2.tgz";
        sha1 = "991ec69d296e0313747d59bdfd2b745c35f8828d";
      };
    }

    {
      name = "safe-regex-1.1.0.tgz";
      path = fetchurl {
        name = "safe-regex-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/safe-regex/-/safe-regex-1.1.0.tgz";
        sha1 = "40a3669f3b077d1e943d44629e157dd48023bf2e";
      };
    }

    {
      name = "safer-buffer-2.1.2.tgz";
      path = fetchurl {
        name = "safer-buffer-2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/safer-buffer/-/safer-buffer-2.1.2.tgz";
        sha1 = "44fa161b0187b9549dd84bb91802f9bd8385cd6a";
      };
    }

    {
      name = "sander-0.5.1.tgz";
      path = fetchurl {
        name = "sander-0.5.1.tgz";
        url  = "https://registry.yarnpkg.com/sander/-/sander-0.5.1.tgz";
        sha1 = "741e245e231f07cafb6fdf0f133adfa216a502ad";
      };
    }

    {
      name = "sass-graph-2.2.4.tgz";
      path = fetchurl {
        name = "sass-graph-2.2.4.tgz";
        url  = "https://registry.yarnpkg.com/sass-graph/-/sass-graph-2.2.4.tgz";
        sha1 = "13fbd63cd1caf0908b9fd93476ad43a51d1e0b49";
      };
    }

    {
      name = "sass-loader-7.1.0.tgz";
      path = fetchurl {
        name = "sass-loader-7.1.0.tgz";
        url  = "https://registry.yarnpkg.com/sass-loader/-/sass-loader-7.1.0.tgz";
        sha1 = "16fd5138cb8b424bf8a759528a1972d72aad069d";
      };
    }

    {
      name = "sax-1.2.4.tgz";
      path = fetchurl {
        name = "sax-1.2.4.tgz";
        url  = "https://registry.yarnpkg.com/sax/-/sax-1.2.4.tgz";
        sha1 = "2816234e2378bddc4e5354fab5caa895df7100d9";
      };
    }

    {
      name = "schema-utils-0.3.0.tgz";
      path = fetchurl {
        name = "schema-utils-0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/schema-utils/-/schema-utils-0.3.0.tgz";
        sha1 = "f5877222ce3e931edae039f17eb3716e7137f8cf";
      };
    }

    {
      name = "schema-utils-0.4.7.tgz";
      path = fetchurl {
        name = "schema-utils-0.4.7.tgz";
        url  = "https://registry.yarnpkg.com/schema-utils/-/schema-utils-0.4.7.tgz";
        sha1 = "ba74f597d2be2ea880131746ee17d0a093c68187";
      };
    }

    {
      name = "schema-utils-1.0.0.tgz";
      path = fetchurl {
        name = "schema-utils-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/schema-utils/-/schema-utils-1.0.0.tgz";
        sha1 = "0b79a93204d7b600d4b2850d1f66c2a34951c770";
      };
    }

    {
      name = "scss-tokenizer-0.2.3.tgz";
      path = fetchurl {
        name = "scss-tokenizer-0.2.3.tgz";
        url  = "https://registry.yarnpkg.com/scss-tokenizer/-/scss-tokenizer-0.2.3.tgz";
        sha1 = "8eb06db9a9723333824d3f5530641149847ce5d1";
      };
    }

    {
      name = "select-hose-2.0.0.tgz";
      path = fetchurl {
        name = "select-hose-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/select-hose/-/select-hose-2.0.0.tgz";
        sha1 = "625d8658f865af43ec962bfc376a37359a4994ca";
      };
    }

    {
      name = "selfsigned-1.10.4.tgz";
      path = fetchurl {
        name = "selfsigned-1.10.4.tgz";
        url  = "https://registry.yarnpkg.com/selfsigned/-/selfsigned-1.10.4.tgz";
        sha1 = "cdd7eccfca4ed7635d47a08bf2d5d3074092e2cd";
      };
    }

    {
      name = "semver-5.6.0.tgz";
      path = fetchurl {
        name = "semver-5.6.0.tgz";
        url  = "https://registry.yarnpkg.com/semver/-/semver-5.6.0.tgz";
        sha1 = "7e74256fbaa49c75aa7c7a205cc22799cac80004";
      };
    }

    {
      name = "semver-5.3.0.tgz";
      path = fetchurl {
        name = "semver-5.3.0.tgz";
        url  = "http://registry.npmjs.org/semver/-/semver-5.3.0.tgz";
        sha1 = "9b2ce5d3de02d17c6012ad326aa6b4d0cf54f94f";
      };
    }

    {
      name = "send-0.16.2.tgz";
      path = fetchurl {
        name = "send-0.16.2.tgz";
        url  = "https://registry.yarnpkg.com/send/-/send-0.16.2.tgz";
        sha1 = "6ecca1e0f8c156d141597559848df64730a6bbc1";
      };
    }

    {
      name = "serialize-javascript-1.5.0.tgz";
      path = fetchurl {
        name = "serialize-javascript-1.5.0.tgz";
        url  = "https://registry.yarnpkg.com/serialize-javascript/-/serialize-javascript-1.5.0.tgz";
        sha1 = "1aa336162c88a890ddad5384baebc93a655161fe";
      };
    }

    {
      name = "serve-index-1.9.1.tgz";
      path = fetchurl {
        name = "serve-index-1.9.1.tgz";
        url  = "https://registry.yarnpkg.com/serve-index/-/serve-index-1.9.1.tgz";
        sha1 = "d3768d69b1e7d82e5ce050fff5b453bea12a9239";
      };
    }

    {
      name = "serve-static-1.13.2.tgz";
      path = fetchurl {
        name = "serve-static-1.13.2.tgz";
        url  = "https://registry.yarnpkg.com/serve-static/-/serve-static-1.13.2.tgz";
        sha1 = "095e8472fd5b46237db50ce486a43f4b86c6cec1";
      };
    }

    {
      name = "set-blocking-2.0.0.tgz";
      path = fetchurl {
        name = "set-blocking-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/set-blocking/-/set-blocking-2.0.0.tgz";
        sha1 = "045f9782d011ae9a6803ddd382b24392b3d890f7";
      };
    }

    {
      name = "set-value-0.4.3.tgz";
      path = fetchurl {
        name = "set-value-0.4.3.tgz";
        url  = "https://registry.yarnpkg.com/set-value/-/set-value-0.4.3.tgz";
        sha1 = "7db08f9d3d22dc7f78e53af3c3bf4666ecdfccf1";
      };
    }

    {
      name = "set-value-2.0.0.tgz";
      path = fetchurl {
        name = "set-value-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/set-value/-/set-value-2.0.0.tgz";
        sha1 = "71ae4a88f0feefbbf52d1ea604f3fb315ebb6274";
      };
    }

    {
      name = "setimmediate-1.0.5.tgz";
      path = fetchurl {
        name = "setimmediate-1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/setimmediate/-/setimmediate-1.0.5.tgz";
        sha1 = "290cbb232e306942d7d7ea9b83732ab7856f8285";
      };
    }

    {
      name = "setprototypeof-1.1.0.tgz";
      path = fetchurl {
        name = "setprototypeof-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/setprototypeof/-/setprototypeof-1.1.0.tgz";
        sha1 = "d0bd85536887b6fe7c0d818cb962d9d91c54e656";
      };
    }

    {
      name = "sha.js-2.4.11.tgz";
      path = fetchurl {
        name = "sha.js-2.4.11.tgz";
        url  = "http://registry.npmjs.org/sha.js/-/sha.js-2.4.11.tgz";
        sha1 = "37a5cf0b81ecbc6943de109ba2960d1b26584ae7";
      };
    }

    {
      name = "shallow-clone-1.0.0.tgz";
      path = fetchurl {
        name = "shallow-clone-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/shallow-clone/-/shallow-clone-1.0.0.tgz";
        sha1 = "4480cd06e882ef68b2ad88a3ea54832e2c48b571";
      };
    }

    {
      name = "shasum-1.0.2.tgz";
      path = fetchurl {
        name = "shasum-1.0.2.tgz";
        url  = "http://registry.npmjs.org/shasum/-/shasum-1.0.2.tgz";
        sha1 = "e7012310d8f417f4deb5712150e5678b87ae565f";
      };
    }

    {
      name = "shebang-command-1.2.0.tgz";
      path = fetchurl {
        name = "shebang-command-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/shebang-command/-/shebang-command-1.2.0.tgz";
        sha1 = "44aac65b695b03398968c39f363fee5deafdf1ea";
      };
    }

    {
      name = "shebang-regex-1.0.0.tgz";
      path = fetchurl {
        name = "shebang-regex-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/shebang-regex/-/shebang-regex-1.0.0.tgz";
        sha1 = "da42f49740c0b42db2ca9728571cb190c98efea3";
      };
    }

    {
      name = "shell-quote-1.6.1.tgz";
      path = fetchurl {
        name = "shell-quote-1.6.1.tgz";
        url  = "https://registry.yarnpkg.com/shell-quote/-/shell-quote-1.6.1.tgz";
        sha1 = "f4781949cce402697127430ea3b3c5476f481767";
      };
    }

    {
      name = "signal-exit-3.0.2.tgz";
      path = fetchurl {
        name = "signal-exit-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/signal-exit/-/signal-exit-3.0.2.tgz";
        sha1 = "b5fdc08f1287ea1178628e415e25132b73646c6d";
      };
    }

    {
      name = "simple-concat-1.0.0.tgz";
      path = fetchurl {
        name = "simple-concat-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/simple-concat/-/simple-concat-1.0.0.tgz";
        sha1 = "7344cbb8b6e26fb27d66b2fc86f9f6d5997521c6";
      };
    }

    {
      name = "snapdragon-node-2.1.1.tgz";
      path = fetchurl {
        name = "snapdragon-node-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/snapdragon-node/-/snapdragon-node-2.1.1.tgz";
        sha1 = "6c175f86ff14bdb0724563e8f3c1b021a286853b";
      };
    }

    {
      name = "snapdragon-util-3.0.1.tgz";
      path = fetchurl {
        name = "snapdragon-util-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/snapdragon-util/-/snapdragon-util-3.0.1.tgz";
        sha1 = "f956479486f2acd79700693f6f7b805e45ab56e2";
      };
    }

    {
      name = "snapdragon-0.8.2.tgz";
      path = fetchurl {
        name = "snapdragon-0.8.2.tgz";
        url  = "https://registry.yarnpkg.com/snapdragon/-/snapdragon-0.8.2.tgz";
        sha1 = "64922e7c565b0e14204ba1aa7d6964278d25182d";
      };
    }

    {
      name = "sockjs-client-1.3.0.tgz";
      path = fetchurl {
        name = "sockjs-client-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/sockjs-client/-/sockjs-client-1.3.0.tgz";
        sha1 = "12fc9d6cb663da5739d3dc5fb6e8687da95cb177";
      };
    }

    {
      name = "sockjs-0.3.19.tgz";
      path = fetchurl {
        name = "sockjs-0.3.19.tgz";
        url  = "https://registry.yarnpkg.com/sockjs/-/sockjs-0.3.19.tgz";
        sha1 = "d976bbe800af7bd20ae08598d582393508993c0d";
      };
    }

    {
      name = "sorcery-0.10.0.tgz";
      path = fetchurl {
        name = "sorcery-0.10.0.tgz";
        url  = "https://registry.yarnpkg.com/sorcery/-/sorcery-0.10.0.tgz";
        sha1 = "8ae90ad7d7cb05fc59f1ab0c637845d5c15a52b7";
      };
    }

    {
      name = "source-list-map-2.0.1.tgz";
      path = fetchurl {
        name = "source-list-map-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/source-list-map/-/source-list-map-2.0.1.tgz";
        sha1 = "3993bd873bfc48479cca9ea3a547835c7c154b34";
      };
    }

    {
      name = "source-map-resolve-0.5.2.tgz";
      path = fetchurl {
        name = "source-map-resolve-0.5.2.tgz";
        url  = "https://registry.yarnpkg.com/source-map-resolve/-/source-map-resolve-0.5.2.tgz";
        sha1 = "72e2cc34095543e43b2c62b2c4c10d4a9054f259";
      };
    }

    {
      name = "source-map-support-0.5.9.tgz";
      path = fetchurl {
        name = "source-map-support-0.5.9.tgz";
        url  = "https://registry.yarnpkg.com/source-map-support/-/source-map-support-0.5.9.tgz";
        sha1 = "41bc953b2534267ea2d605bccfa7bfa3111ced5f";
      };
    }

    {
      name = "source-map-url-0.4.0.tgz";
      path = fetchurl {
        name = "source-map-url-0.4.0.tgz";
        url  = "https://registry.yarnpkg.com/source-map-url/-/source-map-url-0.4.0.tgz";
        sha1 = "3e935d7ddd73631b97659956d55128e87b5084a3";
      };
    }

    {
      name = "source-map-0.4.4.tgz";
      path = fetchurl {
        name = "source-map-0.4.4.tgz";
        url  = "http://registry.npmjs.org/source-map/-/source-map-0.4.4.tgz";
        sha1 = "eba4f5da9c0dc999de68032d8b4f76173652036b";
      };
    }

    {
      name = "source-map-0.5.7.tgz";
      path = fetchurl {
        name = "source-map-0.5.7.tgz";
        url  = "https://registry.yarnpkg.com/source-map/-/source-map-0.5.7.tgz";
        sha1 = "8a039d2d1021d22d1ea14c80d8ea468ba2ef3fcc";
      };
    }

    {
      name = "source-map-0.6.1.tgz";
      path = fetchurl {
        name = "source-map-0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/source-map/-/source-map-0.6.1.tgz";
        sha1 = "74722af32e9614e9c287a8d0bbde48b5e2f1a263";
      };
    }

    {
      name = "sourcemap-codec-1.4.3.tgz";
      path = fetchurl {
        name = "sourcemap-codec-1.4.3.tgz";
        url  = "https://registry.yarnpkg.com/sourcemap-codec/-/sourcemap-codec-1.4.3.tgz";
        sha1 = "0ba615b73ec35112f63c2f2d9e7c3f87282b0e33";
      };
    }

    {
      name = "spdx-correct-3.0.2.tgz";
      path = fetchurl {
        name = "spdx-correct-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/spdx-correct/-/spdx-correct-3.0.2.tgz";
        sha1 = "19bb409e91b47b1ad54159243f7312a858db3c2e";
      };
    }

    {
      name = "spdx-exceptions-2.2.0.tgz";
      path = fetchurl {
        name = "spdx-exceptions-2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/spdx-exceptions/-/spdx-exceptions-2.2.0.tgz";
        sha1 = "2ea450aee74f2a89bfb94519c07fcd6f41322977";
      };
    }

    {
      name = "spdx-expression-parse-3.0.0.tgz";
      path = fetchurl {
        name = "spdx-expression-parse-3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/spdx-expression-parse/-/spdx-expression-parse-3.0.0.tgz";
        sha1 = "99e119b7a5da00e05491c9fa338b7904823b41d0";
      };
    }

    {
      name = "spdx-license-ids-3.0.2.tgz";
      path = fetchurl {
        name = "spdx-license-ids-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/spdx-license-ids/-/spdx-license-ids-3.0.2.tgz";
        sha1 = "a59efc09784c2a5bada13cfeaf5c75dd214044d2";
      };
    }

    {
      name = "spdy-transport-2.1.1.tgz";
      path = fetchurl {
        name = "spdy-transport-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/spdy-transport/-/spdy-transport-2.1.1.tgz";
        sha1 = "c54815d73858aadd06ce63001e7d25fa6441623b";
      };
    }

    {
      name = "spdy-3.4.7.tgz";
      path = fetchurl {
        name = "spdy-3.4.7.tgz";
        url  = "https://registry.yarnpkg.com/spdy/-/spdy-3.4.7.tgz";
        sha1 = "42ff41ece5cc0f99a3a6c28aabb73f5c3b03acbc";
      };
    }

    {
      name = "split-string-3.1.0.tgz";
      path = fetchurl {
        name = "split-string-3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/split-string/-/split-string-3.1.0.tgz";
        sha1 = "7cb09dda3a86585705c64b39a6466038682e8fe2";
      };
    }

    {
      name = "sshpk-1.15.2.tgz";
      path = fetchurl {
        name = "sshpk-1.15.2.tgz";
        url  = "https://registry.yarnpkg.com/sshpk/-/sshpk-1.15.2.tgz";
        sha1 = "c946d6bd9b1a39d0e8635763f5242d6ed6dcb629";
      };
    }

    {
      name = "ssri-6.0.1.tgz";
      path = fetchurl {
        name = "ssri-6.0.1.tgz";
        url  = "https://registry.yarnpkg.com/ssri/-/ssri-6.0.1.tgz";
        sha1 = "2a3c41b28dd45b62b63676ecb74001265ae9edd8";
      };
    }

    {
      name = "static-extend-0.1.2.tgz";
      path = fetchurl {
        name = "static-extend-0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/static-extend/-/static-extend-0.1.2.tgz";
        sha1 = "60809c39cbff55337226fd5e0b520f341f1fb5c6";
      };
    }

    {
      name = "statuses-1.5.0.tgz";
      path = fetchurl {
        name = "statuses-1.5.0.tgz";
        url  = "https://registry.yarnpkg.com/statuses/-/statuses-1.5.0.tgz";
        sha1 = "161c7dac177659fd9811f43771fa99381478628c";
      };
    }

    {
      name = "statuses-1.4.0.tgz";
      path = fetchurl {
        name = "statuses-1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/statuses/-/statuses-1.4.0.tgz";
        sha1 = "bb73d446da2796106efcc1b601a253d6c46bd087";
      };
    }

    {
      name = "stdout-stream-1.4.1.tgz";
      path = fetchurl {
        name = "stdout-stream-1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/stdout-stream/-/stdout-stream-1.4.1.tgz";
        sha1 = "5ac174cdd5cd726104aa0c0b2bd83815d8d535de";
      };
    }

    {
      name = "stream-browserify-2.0.1.tgz";
      path = fetchurl {
        name = "stream-browserify-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/stream-browserify/-/stream-browserify-2.0.1.tgz";
        sha1 = "66266ee5f9bdb9940a4e4514cafb43bb71e5c9db";
      };
    }

    {
      name = "stream-combiner2-1.1.1.tgz";
      path = fetchurl {
        name = "stream-combiner2-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/stream-combiner2/-/stream-combiner2-1.1.1.tgz";
        sha1 = "fb4d8a1420ea362764e21ad4780397bebcb41cbe";
      };
    }

    {
      name = "stream-each-1.2.3.tgz";
      path = fetchurl {
        name = "stream-each-1.2.3.tgz";
        url  = "https://registry.yarnpkg.com/stream-each/-/stream-each-1.2.3.tgz";
        sha1 = "ebe27a0c389b04fbcc233642952e10731afa9bae";
      };
    }

    {
      name = "stream-http-2.8.3.tgz";
      path = fetchurl {
        name = "stream-http-2.8.3.tgz";
        url  = "https://registry.yarnpkg.com/stream-http/-/stream-http-2.8.3.tgz";
        sha1 = "b2d242469288a5a27ec4fe8933acf623de6514fc";
      };
    }

    {
      name = "stream-shift-1.0.0.tgz";
      path = fetchurl {
        name = "stream-shift-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/stream-shift/-/stream-shift-1.0.0.tgz";
        sha1 = "d5c752825e5367e786f78e18e445ea223a155952";
      };
    }

    {
      name = "stream-splicer-2.0.0.tgz";
      path = fetchurl {
        name = "stream-splicer-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/stream-splicer/-/stream-splicer-2.0.0.tgz";
        sha1 = "1b63be438a133e4b671cc1935197600175910d83";
      };
    }

    {
      name = "string-stream-0.0.7.tgz";
      path = fetchurl {
        name = "string-stream-0.0.7.tgz";
        url  = "https://registry.yarnpkg.com/string-stream/-/string-stream-0.0.7.tgz";
        sha1 = "cfcde82799fa62f303429aaa79336ee8834332fe";
      };
    }

    {
      name = "string-width-1.0.2.tgz";
      path = fetchurl {
        name = "string-width-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/string-width/-/string-width-1.0.2.tgz";
        sha1 = "118bdf5b8cdc51a2a7e70d211e07e2b0b9b107d3";
      };
    }

    {
      name = "string-width-2.1.1.tgz";
      path = fetchurl {
        name = "string-width-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/string-width/-/string-width-2.1.1.tgz";
        sha1 = "ab93f27a8dc13d28cac815c462143a6d9012ae9e";
      };
    }

    {
      name = "string_decoder-1.2.0.tgz";
      path = fetchurl {
        name = "string_decoder-1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-1.2.0.tgz";
        sha1 = "fe86e738b19544afe70469243b2a1ee9240eae8d";
      };
    }

    {
      name = "string_decoder-0.10.31.tgz";
      path = fetchurl {
        name = "string_decoder-0.10.31.tgz";
        url  = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-0.10.31.tgz";
        sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
      };
    }

    {
      name = "string_decoder-1.1.1.tgz";
      path = fetchurl {
        name = "string_decoder-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-1.1.1.tgz";
        sha1 = "9cf1611ba62685d7030ae9e4ba34149c3af03fc8";
      };
    }

    {
      name = "strip-ansi-3.0.1.tgz";
      path = fetchurl {
        name = "strip-ansi-3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-3.0.1.tgz";
        sha1 = "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf";
      };
    }

    {
      name = "strip-ansi-4.0.0.tgz";
      path = fetchurl {
        name = "strip-ansi-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-4.0.0.tgz";
        sha1 = "a8479022eb1ac368a871389b635262c505ee368f";
      };
    }

    {
      name = "strip-bom-2.0.0.tgz";
      path = fetchurl {
        name = "strip-bom-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/strip-bom/-/strip-bom-2.0.0.tgz";
        sha1 = "6219a85616520491f35788bdbf1447a99c7e6b0e";
      };
    }

    {
      name = "strip-eof-1.0.0.tgz";
      path = fetchurl {
        name = "strip-eof-1.0.0.tgz";
        url  = "http://registry.npmjs.org/strip-eof/-/strip-eof-1.0.0.tgz";
        sha1 = "bb43ff5598a6eb05d89b59fcd129c983313606bf";
      };
    }

    {
      name = "strip-indent-1.0.1.tgz";
      path = fetchurl {
        name = "strip-indent-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/strip-indent/-/strip-indent-1.0.1.tgz";
        sha1 = "0c7962a6adefa7bbd4ac366460a638552ae1a0a2";
      };
    }

    {
      name = "strip-json-comments-2.0.1.tgz";
      path = fetchurl {
        name = "strip-json-comments-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-2.0.1.tgz";
        sha1 = "3c531942e908c2697c0ec344858c286c7ca0a60a";
      };
    }

    {
      name = "style-loader-0.23.1.tgz";
      path = fetchurl {
        name = "style-loader-0.23.1.tgz";
        url  = "https://registry.yarnpkg.com/style-loader/-/style-loader-0.23.1.tgz";
        sha1 = "cb9154606f3e771ab6c4ab637026a1049174d925";
      };
    }

    {
      name = "subarg-1.0.0.tgz";
      path = fetchurl {
        name = "subarg-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/subarg/-/subarg-1.0.0.tgz";
        sha1 = "f62cf17581e996b48fc965699f54c06ae268b8d2";
      };
    }

    {
      name = "supports-color-2.0.0.tgz";
      path = fetchurl {
        name = "supports-color-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/supports-color/-/supports-color-2.0.0.tgz";
        sha1 = "535d045ce6b6363fa40117084629995e9df324c7";
      };
    }

    {
      name = "supports-color-5.5.0.tgz";
      path = fetchurl {
        name = "supports-color-5.5.0.tgz";
        url  = "https://registry.yarnpkg.com/supports-color/-/supports-color-5.5.0.tgz";
        sha1 = "e2e69a44ac8772f78a1ec0b35b689df6530efc8f";
      };
    }

    {
      name = "syntax-error-1.4.0.tgz";
      path = fetchurl {
        name = "syntax-error-1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/syntax-error/-/syntax-error-1.4.0.tgz";
        sha1 = "2d9d4ff5c064acb711594a3e3b95054ad51d907c";
      };
    }

    {
      name = "tapable-1.1.1.tgz";
      path = fetchurl {
        name = "tapable-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/tapable/-/tapable-1.1.1.tgz";
        sha1 = "4d297923c5a72a42360de2ab52dadfaaec00018e";
      };
    }

    {
      name = "tar-2.2.1.tgz";
      path = fetchurl {
        name = "tar-2.2.1.tgz";
        url  = "http://registry.npmjs.org/tar/-/tar-2.2.1.tgz";
        sha1 = "8e4d2a256c0e2185c6b18ad694aec968b83cb1d1";
      };
    }

    {
      name = "tar-4.4.8.tgz";
      path = fetchurl {
        name = "tar-4.4.8.tgz";
        url  = "https://registry.yarnpkg.com/tar/-/tar-4.4.8.tgz";
        sha1 = "b19eec3fde2a96e64666df9fdb40c5ca1bc3747d";
      };
    }

    {
      name = "temp-0.8.3.tgz";
      path = fetchurl {
        name = "temp-0.8.3.tgz";
        url  = "https://registry.yarnpkg.com/temp/-/temp-0.8.3.tgz";
        sha1 = "e0c6bc4d26b903124410e4fed81103014dfc1f59";
      };
    }

    {
      name = "terser-webpack-plugin-1.1.0.tgz";
      path = fetchurl {
        name = "terser-webpack-plugin-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/terser-webpack-plugin/-/terser-webpack-plugin-1.1.0.tgz";
        sha1 = "cf7c25a1eee25bf121f4a587bb9e004e3f80e528";
      };
    }

    {
      name = "terser-3.10.12.tgz";
      path = fetchurl {
        name = "terser-3.10.12.tgz";
        url  = "https://registry.yarnpkg.com/terser/-/terser-3.10.12.tgz";
        sha1 = "06d40765e40b33fd97977c0896c75b2b5d42142d";
      };
    }

    {
      name = "through2-2.0.5.tgz";
      path = fetchurl {
        name = "through2-2.0.5.tgz";
        url  = "https://registry.yarnpkg.com/through2/-/through2-2.0.5.tgz";
        sha1 = "01c1e39eb31d07cb7d03a96a70823260b23132cd";
      };
    }

    {
      name = "through-2.3.8.tgz";
      path = fetchurl {
        name = "through-2.3.8.tgz";
        url  = "http://registry.npmjs.org/through/-/through-2.3.8.tgz";
        sha1 = "0dd4c9ffaabc357960b1b724115d7e0e86a2e1f5";
      };
    }

    {
      name = "through-2.2.7.tgz";
      path = fetchurl {
        name = "through-2.2.7.tgz";
        url  = "http://registry.npmjs.org/through/-/through-2.2.7.tgz";
        sha1 = "6e8e21200191d4eb6a99f6f010df46aa1c6eb2bd";
      };
    }

    {
      name = "thunky-1.0.3.tgz";
      path = fetchurl {
        name = "thunky-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/thunky/-/thunky-1.0.3.tgz";
        sha1 = "f5df732453407b09191dae73e2a8cc73f381a826";
      };
    }

    {
      name = "timers-browserify-1.4.2.tgz";
      path = fetchurl {
        name = "timers-browserify-1.4.2.tgz";
        url  = "https://registry.yarnpkg.com/timers-browserify/-/timers-browserify-1.4.2.tgz";
        sha1 = "c9c58b575be8407375cb5e2462dacee74359f41d";
      };
    }

    {
      name = "timers-browserify-2.0.10.tgz";
      path = fetchurl {
        name = "timers-browserify-2.0.10.tgz";
        url  = "https://registry.yarnpkg.com/timers-browserify/-/timers-browserify-2.0.10.tgz";
        sha1 = "1d28e3d2aadf1d5a5996c4e9f95601cd053480ae";
      };
    }

    {
      name = "to-arraybuffer-1.0.1.tgz";
      path = fetchurl {
        name = "to-arraybuffer-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/to-arraybuffer/-/to-arraybuffer-1.0.1.tgz";
        sha1 = "7d229b1fcc637e466ca081180836a7aabff83f43";
      };
    }

    {
      name = "to-object-path-0.3.0.tgz";
      path = fetchurl {
        name = "to-object-path-0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/to-object-path/-/to-object-path-0.3.0.tgz";
        sha1 = "297588b7b0e7e0ac08e04e672f85c1f4999e17af";
      };
    }

    {
      name = "to-regex-range-2.1.1.tgz";
      path = fetchurl {
        name = "to-regex-range-2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/to-regex-range/-/to-regex-range-2.1.1.tgz";
        sha1 = "7c80c17b9dfebe599e27367e0d4dd5590141db38";
      };
    }

    {
      name = "to-regex-3.0.2.tgz";
      path = fetchurl {
        name = "to-regex-3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/to-regex/-/to-regex-3.0.2.tgz";
        sha1 = "13cfdd9b336552f30b51f33a8ae1b42a7a7599ce";
      };
    }

    {
      name = "toposort-1.0.7.tgz";
      path = fetchurl {
        name = "toposort-1.0.7.tgz";
        url  = "https://registry.yarnpkg.com/toposort/-/toposort-1.0.7.tgz";
        sha1 = "2e68442d9f64ec720b8cc89e6443ac6caa950029";
      };
    }

    {
      name = "tough-cookie-2.4.3.tgz";
      path = fetchurl {
        name = "tough-cookie-2.4.3.tgz";
        url  = "https://registry.yarnpkg.com/tough-cookie/-/tough-cookie-2.4.3.tgz";
        sha1 = "53f36da3f47783b0925afa06ff9f3b165280f781";
      };
    }

    {
      name = "tree-kill-1.2.1.tgz";
      path = fetchurl {
        name = "tree-kill-1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/tree-kill/-/tree-kill-1.2.1.tgz";
        sha1 = "5398f374e2f292b9dcc7b2e71e30a5c3bb6c743a";
      };
    }

    {
      name = "trim-newlines-1.0.0.tgz";
      path = fetchurl {
        name = "trim-newlines-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/trim-newlines/-/trim-newlines-1.0.0.tgz";
        sha1 = "5887966bb582a4503a41eb524f7d35011815a613";
      };
    }

    {
      name = "true-case-path-1.0.3.tgz";
      path = fetchurl {
        name = "true-case-path-1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/true-case-path/-/true-case-path-1.0.3.tgz";
        sha1 = "f813b5a8c86b40da59606722b144e3225799f47d";
      };
    }

    {
      name = "tslib-1.9.3.tgz";
      path = fetchurl {
        name = "tslib-1.9.3.tgz";
        url  = "https://registry.yarnpkg.com/tslib/-/tslib-1.9.3.tgz";
        sha1 = "d7e4dd79245d85428c4d7e4822a79917954ca286";
      };
    }

    {
      name = "tty-browserify-0.0.0.tgz";
      path = fetchurl {
        name = "tty-browserify-0.0.0.tgz";
        url  = "https://registry.yarnpkg.com/tty-browserify/-/tty-browserify-0.0.0.tgz";
        sha1 = "a157ba402da24e9bf957f9aa69d524eed42901a6";
      };
    }

    {
      name = "tty-browserify-0.0.1.tgz";
      path = fetchurl {
        name = "tty-browserify-0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/tty-browserify/-/tty-browserify-0.0.1.tgz";
        sha1 = "3f05251ee17904dfd0677546670db9651682b811";
      };
    }

    {
      name = "tunnel-agent-0.6.0.tgz";
      path = fetchurl {
        name = "tunnel-agent-0.6.0.tgz";
        url  = "https://registry.yarnpkg.com/tunnel-agent/-/tunnel-agent-0.6.0.tgz";
        sha1 = "27a5dea06b36b04a0a9966774b290868f0fc40fd";
      };
    }

    {
      name = "tweetnacl-0.14.5.tgz";
      path = fetchurl {
        name = "tweetnacl-0.14.5.tgz";
        url  = "https://registry.yarnpkg.com/tweetnacl/-/tweetnacl-0.14.5.tgz";
        sha1 = "5ae68177f192d4456269d108afa93ff8743f4f64";
      };
    }

    {
      name = "type-is-1.6.16.tgz";
      path = fetchurl {
        name = "type-is-1.6.16.tgz";
        url  = "https://registry.yarnpkg.com/type-is/-/type-is-1.6.16.tgz";
        sha1 = "f89ce341541c672b25ee7ae3c73dee3b2be50194";
      };
    }

    {
      name = "typedarray-0.0.6.tgz";
      path = fetchurl {
        name = "typedarray-0.0.6.tgz";
        url  = "https://registry.yarnpkg.com/typedarray/-/typedarray-0.0.6.tgz";
        sha1 = "867ac74e3864187b1d3d47d996a78ec5c8830777";
      };
    }

    {
      name = "uglify-js-3.4.9.tgz";
      path = fetchurl {
        name = "uglify-js-3.4.9.tgz";
        url  = "https://registry.yarnpkg.com/uglify-js/-/uglify-js-3.4.9.tgz";
        sha1 = "af02f180c1207d76432e473ed24a28f4a782bae3";
      };
    }

    {
      name = "umd-3.0.3.tgz";
      path = fetchurl {
        name = "umd-3.0.3.tgz";
        url  = "https://registry.yarnpkg.com/umd/-/umd-3.0.3.tgz";
        sha1 = "aa9fe653c42b9097678489c01000acb69f0b26cf";
      };
    }

    {
      name = "undeclared-identifiers-1.1.2.tgz";
      path = fetchurl {
        name = "undeclared-identifiers-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/undeclared-identifiers/-/undeclared-identifiers-1.1.2.tgz";
        sha1 = "7d850a98887cff4bd0bf64999c014d08ed6d1acc";
      };
    }

    {
      name = "union-value-1.0.0.tgz";
      path = fetchurl {
        name = "union-value-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/union-value/-/union-value-1.0.0.tgz";
        sha1 = "5c71c34cb5bad5dcebe3ea0cd08207ba5aa1aea4";
      };
    }

    {
      name = "unique-filename-1.1.1.tgz";
      path = fetchurl {
        name = "unique-filename-1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/unique-filename/-/unique-filename-1.1.1.tgz";
        sha1 = "1d69769369ada0583103a1e6ae87681b56573230";
      };
    }

    {
      name = "unique-slug-2.0.1.tgz";
      path = fetchurl {
        name = "unique-slug-2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/unique-slug/-/unique-slug-2.0.1.tgz";
        sha1 = "5e9edc6d1ce8fb264db18a507ef9bd8544451ca6";
      };
    }

    {
      name = "unpipe-1.0.0.tgz";
      path = fetchurl {
        name = "unpipe-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/unpipe/-/unpipe-1.0.0.tgz";
        sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
      };
    }

    {
      name = "unset-value-1.0.0.tgz";
      path = fetchurl {
        name = "unset-value-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/unset-value/-/unset-value-1.0.0.tgz";
        sha1 = "8376873f7d2335179ffb1e6fc3a8ed0dfc8ab559";
      };
    }

    {
      name = "upath-1.1.0.tgz";
      path = fetchurl {
        name = "upath-1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/upath/-/upath-1.1.0.tgz";
        sha1 = "35256597e46a581db4793d0ce47fa9aebfc9fabd";
      };
    }

    {
      name = "upper-case-1.1.3.tgz";
      path = fetchurl {
        name = "upper-case-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/upper-case/-/upper-case-1.1.3.tgz";
        sha1 = "f6b4501c2ec4cdd26ba78be7222961de77621598";
      };
    }

    {
      name = "uri-js-4.2.2.tgz";
      path = fetchurl {
        name = "uri-js-4.2.2.tgz";
        url  = "https://registry.yarnpkg.com/uri-js/-/uri-js-4.2.2.tgz";
        sha1 = "94c540e1ff772956e2299507c010aea6c8838eb0";
      };
    }

    {
      name = "urix-0.1.0.tgz";
      path = fetchurl {
        name = "urix-0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/urix/-/urix-0.1.0.tgz";
        sha1 = "da937f7a62e21fec1fd18d49b35c2935067a6c72";
      };
    }

    {
      name = "url-loader-1.1.2.tgz";
      path = fetchurl {
        name = "url-loader-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/url-loader/-/url-loader-1.1.2.tgz";
        sha1 = "b971d191b83af693c5e3fea4064be9e1f2d7f8d8";
      };
    }

    {
      name = "url-parse-1.4.4.tgz";
      path = fetchurl {
        name = "url-parse-1.4.4.tgz";
        url  = "https://registry.yarnpkg.com/url-parse/-/url-parse-1.4.4.tgz";
        sha1 = "cac1556e95faa0303691fec5cf9d5a1bc34648f8";
      };
    }

    {
      name = "url-0.11.0.tgz";
      path = fetchurl {
        name = "url-0.11.0.tgz";
        url  = "https://registry.yarnpkg.com/url/-/url-0.11.0.tgz";
        sha1 = "3838e97cfc60521eb73c525a8e55bfdd9e2e28f1";
      };
    }

    {
      name = "use-3.1.1.tgz";
      path = fetchurl {
        name = "use-3.1.1.tgz";
        url  = "https://registry.yarnpkg.com/use/-/use-3.1.1.tgz";
        sha1 = "d50c8cac79a19fbc20f2911f56eb973f4e10070f";
      };
    }

    {
      name = "util-deprecate-1.0.2.tgz";
      path = fetchurl {
        name = "util-deprecate-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/util-deprecate/-/util-deprecate-1.0.2.tgz";
        sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
      };
    }

    {
      name = "util.promisify-1.0.0.tgz";
      path = fetchurl {
        name = "util.promisify-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/util.promisify/-/util.promisify-1.0.0.tgz";
        sha1 = "440f7165a459c9a16dc145eb8e72f35687097030";
      };
    }

    {
      name = "util-0.10.3.tgz";
      path = fetchurl {
        name = "util-0.10.3.tgz";
        url  = "https://registry.yarnpkg.com/util/-/util-0.10.3.tgz";
        sha1 = "7afb1afe50805246489e3db7fe0ed379336ac0f9";
      };
    }

    {
      name = "util-0.10.4.tgz";
      path = fetchurl {
        name = "util-0.10.4.tgz";
        url  = "https://registry.yarnpkg.com/util/-/util-0.10.4.tgz";
        sha1 = "3aa0125bfe668a4672de58857d3ace27ecb76901";
      };
    }

    {
      name = "utila-0.4.0.tgz";
      path = fetchurl {
        name = "utila-0.4.0.tgz";
        url  = "https://registry.yarnpkg.com/utila/-/utila-0.4.0.tgz";
        sha1 = "8a16a05d445657a3aea5eecc5b12a4fa5379772c";
      };
    }

    {
      name = "utils-merge-1.0.1.tgz";
      path = fetchurl {
        name = "utils-merge-1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/utils-merge/-/utils-merge-1.0.1.tgz";
        sha1 = "9f95710f50a267947b2ccc124741c1028427e713";
      };
    }

    {
      name = "uuid-3.3.2.tgz";
      path = fetchurl {
        name = "uuid-3.3.2.tgz";
        url  = "https://registry.yarnpkg.com/uuid/-/uuid-3.3.2.tgz";
        sha1 = "1b4af4955eb3077c501c23872fc6513811587131";
      };
    }

    {
      name = "v8-compile-cache-2.0.2.tgz";
      path = fetchurl {
        name = "v8-compile-cache-2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/v8-compile-cache/-/v8-compile-cache-2.0.2.tgz";
        sha1 = "a428b28bb26790734c4fc8bc9fa106fccebf6a6c";
      };
    }

    {
      name = "validate-npm-package-license-3.0.4.tgz";
      path = fetchurl {
        name = "validate-npm-package-license-3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/validate-npm-package-license/-/validate-npm-package-license-3.0.4.tgz";
        sha1 = "fc91f6b9c7ba15c857f4cb2c5defeec39d4f410a";
      };
    }

    {
      name = "vary-1.1.2.tgz";
      path = fetchurl {
        name = "vary-1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/vary/-/vary-1.1.2.tgz";
        sha1 = "2299f02c6ded30d4a5961b0b9f74524a18f634fc";
      };
    }

    {
      name = "verror-1.10.0.tgz";
      path = fetchurl {
        name = "verror-1.10.0.tgz";
        url  = "https://registry.yarnpkg.com/verror/-/verror-1.10.0.tgz";
        sha1 = "3a105ca17053af55d6e270c1f8288682e18da400";
      };
    }

    {
      name = "vm-browserify-0.0.4.tgz";
      path = fetchurl {
        name = "vm-browserify-0.0.4.tgz";
        url  = "https://registry.yarnpkg.com/vm-browserify/-/vm-browserify-0.0.4.tgz";
        sha1 = "5d7ea45bbef9e4a6ff65f95438e0a87c357d5a73";
      };
    }

    {
      name = "watchpack-1.6.0.tgz";
      path = fetchurl {
        name = "watchpack-1.6.0.tgz";
        url  = "https://registry.yarnpkg.com/watchpack/-/watchpack-1.6.0.tgz";
        sha1 = "4bc12c2ebe8aa277a71f1d3f14d685c7b446cd00";
      };
    }

    {
      name = "wbuf-1.7.3.tgz";
      path = fetchurl {
        name = "wbuf-1.7.3.tgz";
        url  = "https://registry.yarnpkg.com/wbuf/-/wbuf-1.7.3.tgz";
        sha1 = "c1d8d149316d3ea852848895cb6a0bfe887b87df";
      };
    }

    {
      name = "webpack-cli-3.1.2.tgz";
      path = fetchurl {
        name = "webpack-cli-3.1.2.tgz";
        url  = "https://registry.yarnpkg.com/webpack-cli/-/webpack-cli-3.1.2.tgz";
        sha1 = "17d7e01b77f89f884a2bbf9db545f0f6a648e746";
      };
    }

    {
      name = "webpack-dev-middleware-3.4.0.tgz";
      path = fetchurl {
        name = "webpack-dev-middleware-3.4.0.tgz";
        url  = "https://registry.yarnpkg.com/webpack-dev-middleware/-/webpack-dev-middleware-3.4.0.tgz";
        sha1 = "1132fecc9026fd90f0ecedac5cbff75d1fb45890";
      };
    }

    {
      name = "webpack-dev-server-3.1.10.tgz";
      path = fetchurl {
        name = "webpack-dev-server-3.1.10.tgz";
        url  = "https://registry.yarnpkg.com/webpack-dev-server/-/webpack-dev-server-3.1.10.tgz";
        sha1 = "507411bee727ee8d2fdffdc621b66a64ab3dea2b";
      };
    }

    {
      name = "webpack-log-2.0.0.tgz";
      path = fetchurl {
        name = "webpack-log-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/webpack-log/-/webpack-log-2.0.0.tgz";
        sha1 = "5b7928e0637593f119d32f6227c1e0ac31e1b47f";
      };
    }

    {
      name = "webpack-sources-1.3.0.tgz";
      path = fetchurl {
        name = "webpack-sources-1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/webpack-sources/-/webpack-sources-1.3.0.tgz";
        sha1 = "2a28dcb9f1f45fe960d8f1493252b5ee6530fa85";
      };
    }

    {
      name = "webpack-4.26.1.tgz";
      path = fetchurl {
        name = "webpack-4.26.1.tgz";
        url  = "https://registry.yarnpkg.com/webpack/-/webpack-4.26.1.tgz";
        sha1 = "ff3a9283d363c07b3494dfa702d08f4f2ef6cb39";
      };
    }

    {
      name = "websocket-driver-0.7.0.tgz";
      path = fetchurl {
        name = "websocket-driver-0.7.0.tgz";
        url  = "https://registry.yarnpkg.com/websocket-driver/-/websocket-driver-0.7.0.tgz";
        sha1 = "0caf9d2d755d93aee049d4bdd0d3fe2cca2a24eb";
      };
    }

    {
      name = "websocket-extensions-0.1.3.tgz";
      path = fetchurl {
        name = "websocket-extensions-0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/websocket-extensions/-/websocket-extensions-0.1.3.tgz";
        sha1 = "5d2ff22977003ec687a4b87073dfbbac146ccf29";
      };
    }

    {
      name = "which-module-1.0.0.tgz";
      path = fetchurl {
        name = "which-module-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/which-module/-/which-module-1.0.0.tgz";
        sha1 = "bba63ca861948994ff307736089e3b96026c2a4f";
      };
    }

    {
      name = "which-module-2.0.0.tgz";
      path = fetchurl {
        name = "which-module-2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/which-module/-/which-module-2.0.0.tgz";
        sha1 = "d9ef07dce77b9902b8a3a8fa4b31c3e3f7e6e87a";
      };
    }

    {
      name = "which-1.3.1.tgz";
      path = fetchurl {
        name = "which-1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/which/-/which-1.3.1.tgz";
        sha1 = "a45043d54f5805316da8d62f9f50918d3da70b0a";
      };
    }

    {
      name = "wide-align-1.1.3.tgz";
      path = fetchurl {
        name = "wide-align-1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/wide-align/-/wide-align-1.1.3.tgz";
        sha1 = "ae074e6bdc0c14a431e804e624549c633b000457";
      };
    }

    {
      name = "wordwrap-1.0.0.tgz";
      path = fetchurl {
        name = "wordwrap-1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-1.0.0.tgz";
        sha1 = "27584810891456a4171c8d0226441ade90cbcaeb";
      };
    }

    {
      name = "wordwrap-0.0.3.tgz";
      path = fetchurl {
        name = "wordwrap-0.0.3.tgz";
        url  = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-0.0.3.tgz";
        sha1 = "a3d5da6cd5c0bc0008d37234bbaf1bed63059107";
      };
    }

    {
      name = "worker-farm-1.6.0.tgz";
      path = fetchurl {
        name = "worker-farm-1.6.0.tgz";
        url  = "https://registry.yarnpkg.com/worker-farm/-/worker-farm-1.6.0.tgz";
        sha1 = "aecc405976fab5a95526180846f0dba288f3a4a0";
      };
    }

    {
      name = "wrap-ansi-2.1.0.tgz";
      path = fetchurl {
        name = "wrap-ansi-2.1.0.tgz";
        url  = "http://registry.npmjs.org/wrap-ansi/-/wrap-ansi-2.1.0.tgz";
        sha1 = "d8fc3d284dd05794fe84973caecdd1cf824fdd85";
      };
    }

    {
      name = "wrappy-1.0.2.tgz";
      path = fetchurl {
        name = "wrappy-1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/wrappy/-/wrappy-1.0.2.tgz";
        sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
      };
    }

    {
      name = "xhr2-0.1.4.tgz";
      path = fetchurl {
        name = "xhr2-0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/xhr2/-/xhr2-0.1.4.tgz";
        sha1 = "7f87658847716db5026323812f818cadab387a5f";
      };
    }

    {
      name = "xregexp-4.0.0.tgz";
      path = fetchurl {
        name = "xregexp-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/xregexp/-/xregexp-4.0.0.tgz";
        sha1 = "e698189de49dd2a18cc5687b05e17c8e43943020";
      };
    }

    {
      name = "xtend-4.0.1.tgz";
      path = fetchurl {
        name = "xtend-4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/xtend/-/xtend-4.0.1.tgz";
        sha1 = "a5c6d532be656e23db820efb943a1f04998d63af";
      };
    }

    {
      name = "y18n-3.2.1.tgz";
      path = fetchurl {
        name = "y18n-3.2.1.tgz";
        url  = "https://registry.yarnpkg.com/y18n/-/y18n-3.2.1.tgz";
        sha1 = "6d15fba884c08679c0d77e88e7759e811e07fa41";
      };
    }

    {
      name = "y18n-4.0.0.tgz";
      path = fetchurl {
        name = "y18n-4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/y18n/-/y18n-4.0.0.tgz";
        sha1 = "95ef94f85ecc81d007c264e190a120f0a3c8566b";
      };
    }

    {
      name = "yallist-2.1.2.tgz";
      path = fetchurl {
        name = "yallist-2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/yallist/-/yallist-2.1.2.tgz";
        sha1 = "1c11f9218f076089a47dd512f93c6699a6a81d52";
      };
    }

    {
      name = "yallist-3.0.3.tgz";
      path = fetchurl {
        name = "yallist-3.0.3.tgz";
        url  = "https://registry.yarnpkg.com/yallist/-/yallist-3.0.3.tgz";
        sha1 = "b4b049e314be545e3ce802236d6cd22cd91c3de9";
      };
    }

    {
      name = "yargs-parser-10.1.0.tgz";
      path = fetchurl {
        name = "yargs-parser-10.1.0.tgz";
        url  = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-10.1.0.tgz";
        sha1 = "7202265b89f7e9e9f2e5765e0fe735a905edbaa8";
      };
    }

    {
      name = "yargs-parser-5.0.0.tgz";
      path = fetchurl {
        name = "yargs-parser-5.0.0.tgz";
        url  = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-5.0.0.tgz";
        sha1 = "275ecf0d7ffe05c77e64e7c86e4cd94bf0e1228a";
      };
    }

    {
      name = "yargs-12.0.2.tgz";
      path = fetchurl {
        name = "yargs-12.0.2.tgz";
        url  = "https://registry.yarnpkg.com/yargs/-/yargs-12.0.2.tgz";
        sha1 = "fe58234369392af33ecbef53819171eff0f5aadc";
      };
    }

    {
      name = "yargs-7.1.0.tgz";
      path = fetchurl {
        name = "yargs-7.1.0.tgz";
        url  = "https://registry.yarnpkg.com/yargs/-/yargs-7.1.0.tgz";
        sha1 = "6ba318eb16961727f5d284f8ea003e8d6154d0c8";
      };
    }
  ];
}
