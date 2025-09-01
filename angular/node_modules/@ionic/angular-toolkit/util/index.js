"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.buildSelector = buildSelector;
const core_1 = require("@angular-devkit/core");
function buildSelector(options, projectPrefix) {
    let selector = core_1.strings.dasherize(options.name);
    if (options.prefix) {
        selector = `${options.prefix}-${selector}`;
    }
    else if (options.prefix === undefined && projectPrefix) {
        selector = `${projectPrefix}-${selector}`;
    }
    return selector;
}
