require('./bootstrap');

window.Vue = require('vue');
window.Axios = require('axios');

Vue.component('dropdown-component', require('./components/DropdownComponent.vue').default);

const app = new Vue({
    el: '#app',
});
