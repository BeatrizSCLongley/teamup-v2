// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require("components/aos_scrolling")

// External
import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css';

// -----------------------------------------------------
// Import functions here:
// import { downloadBtn } from '../components/download';
import { navbarScroll } from '../components/navbar';
import { initMapbox } from '../plugins/init_mapbox';
import { googleAnalytics } from '../analytics/google_analytics';

document.addEventListener('turbolinks:load', () => {
  // initUpdateNavbarOnScroll();
  // downloadBtn();
  navbarScroll();
  initMapbox();
  googleAnalytics();
});
