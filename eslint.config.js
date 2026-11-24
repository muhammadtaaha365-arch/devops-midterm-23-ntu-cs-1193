// eslint.config.js — ESLint's recommended rules, for Node (CommonJS) code.
const js = require('@eslint/js');
const globals = require('globals');

module.exports = [
  { ignores: ['node_modules/', '*.tgz'] },
  js.configs.recommended,
  { languageOptions: { sourceType: 'commonjs', globals: globals.node } },
];

