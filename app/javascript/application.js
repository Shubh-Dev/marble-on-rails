// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
console.log("Hello from application.js");
import "@hotwired/turbo-rails";
import "controllers";

import "./add_jquery.js";
import { Tabulator } from "tabulator-tables";
window.Tabulator = Tabulator;
console.log("Tabulator loaded");
