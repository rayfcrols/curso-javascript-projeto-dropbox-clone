{
  "env": {
    "commonjs": true,
    "es6": true,
    "node": true
  },
  "extends": [
    "airbnb",
    "prettier"
    //,
    // "eslint:recommended",
    // "plugin:jsx-a11y/recommended",
    // "prettier/react",
    // "plugin:node/recommended"
  ],
  "globals": {
    "Atomics": "readonly",
    "SharedArrayBuffer": "readonly"
  },
  "parserOptions": {
    "ecmaVersion": 2018
  },
  //"plugins": ["react", "jsx-a11y", "prettier"],
  "plugins": ["prettier"],
  "rules": {
    "prettier/prettier": "error",
    "class-methods-use-this": "off",
    "no-unused-vars": ["error", { "argsIgnorePattern": "next" }]
    //"no-restricted-syntax": ["warn", "WithStatement"],
    //"semi": 0,
    // "no-console": "off",
    // "func-names": "off",
    // "no-process-exit": "off",
    // "object-shorthand": "off",
    // "quote-props": [2, "consistent-as-needed"],
    // "comma-dangle": ["error", "never"],
    // "prefer-const": [
    //   "warn",
    //   {
    //     "destructuring": "any",
    //     "ignoreReadBeforeAssign": true
    //   }
    // ],
    // "spaced-comment": ["error", "always"],
    // "radix": ["error", "as-needed"]
  }
}
