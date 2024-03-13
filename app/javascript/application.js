// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
console.log("Hello from application.js");
import "@hotwired/turbo-rails";
import "controllers";

import "./add_jquery.js";

import { TabulatorFull as Tabulator } from "tabulator-tables";
window.Tabulator = Tabulator;
