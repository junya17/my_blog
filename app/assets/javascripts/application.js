// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require jquery_ujs
//= require activestorage
//= require quill.global
import * as ActiveStorage from "activestorage"
ActiveStorage.start()

var defaults = {
	theme: 'snow',
	modules: {
		toolbar: [
			[{ 'header': [1, 2, 3, false] }],
			[{ 'color': [] }, { 'background': [] }],
			['bold', 'italic', 'underline', 'strike'],
			['link', 'image','video'],
			['blockquote', 'code-block'],
			[{ 'list': 'ordered'}, { 'list': 'bullet' }],
			[{ 'indent': '-1'}, { 'indent': '+1' }],
			['clean']
		]
	}
};

//This is the global config object
Quilljs.setDefaults(defaults)