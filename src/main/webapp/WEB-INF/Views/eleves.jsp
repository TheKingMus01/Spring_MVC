<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.king2.model.Eleve" %>

<!doctype html>

<html lang="en">
  <head>
  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">


 
<style type="text/css">
	.add{
	color: white;}
	.add:focus, .add:hover{
       color: #fdd114;  }
	@font-face {
  font-family: 'icomoon';
  src:  url('fonts/icomoon.eot?10si43');
  src:  url('fonts/icomoon.eot?10si43#iefix') format('embedded-opentype'),
    url('fonts/icomoon.ttf?10si43') format('truetype'),
    url('fonts/icomoon.woff?10si43') format('woff'),
    url('fonts/icomoon.svg?10si43#icomoon') format('svg');
  font-weight: normal;
  font-style: normal;
}

[class^="icon-"], [class*=" icon-"] {
  /* use !important to prevent issues with browser extensions that change fonts */
  font-family: 'icomoon' !important;
  speak: none;
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;

  /* Better Font Rendering =========== */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.icon-asterisk:before {
  content: "\f069";
}
.icon-plus:before {
  content: "\f067";
}
.icon-question:before {
  content: "\f128";
}
.icon-minus:before {
  content: "\f068";
}
.icon-glass:before {
  content: "\f000";
}
.icon-music:before {
  content: "\f001";
}
.icon-search:before {
  content: "\f002";
}
.icon-envelope-o:before {
  content: "\f003";
}
.icon-heart:before {
  content: "\f004";
}
.icon-star:before {
  content: "\f005";
}
.icon-star-o:before {
  content: "\f006";
}
.icon-user:before {
  content: "\f007";
}
.icon-film:before {
  content: "\f008";
}
.icon-th-large:before {
  content: "\f009";
}
.icon-th:before {
  content: "\f00a";
}
.icon-th-list:before {
  content: "\f00b";
}
.icon-check:before {
  content: "\f00c";
}
.icon-close:before {
  content: "\f00d";
}
.icon-remove:before {
  content: "\f00d";
}
.icon-times:before {
  content: "\f00d";
}
.icon-search-plus:before {
  content: "\f00e";
}
.icon-search-minus:before {
  content: "\f010";
}
.icon-power-off:before {
  content: "\f011";
}
.icon-signal:before {
  content: "\f012";
}
.icon-cog:before {
  content: "\f013";
}
.icon-gear:before {
  content: "\f013";
}
.icon-trash-o:before {
  content: "\f014";
}
.icon-home:before {
  content: "\f015";
}
.icon-file-o:before {
  content: "\f016";
}
.icon-clock-o:before {
  content: "\f017";
}
.icon-road:before {
  content: "\f018";
}
.icon-download:before {
  content: "\f019";
}
.icon-arrow-circle-o-down:before {
  content: "\f01a";
}
.icon-arrow-circle-o-up:before {
  content: "\f01b";
}
.icon-inbox:before {
  content: "\f01c";
}
.icon-play-circle-o:before {
  content: "\f01d";
}
.icon-repeat:before {
  content: "\f01e";
}
.icon-rotate-right:before {
  content: "\f01e";
}
.icon-refresh:before {
  content: "\f021";
}
.icon-list-alt:before {
  content: "\f022";
}
.icon-lock:before {
  content: "\f023";
}
.icon-flag:before {
  content: "\f024";
}
.icon-headphones:before {
  content: "\f025";
}
.icon-volume-off:before {
  content: "\f026";
}
.icon-volume-down:before {
  content: "\f027";
}
.icon-volume-up:before {
  content: "\f028";
}
.icon-qrcode:before {
  content: "\f029";
}
.icon-barcode:before {
  content: "\f02a";
}
.icon-tag:before {
  content: "\f02b";
}
.icon-tags:before {
  content: "\f02c";
}
.icon-book:before {
  content: "\f02d";
}
.icon-bookmark:before {
  content: "\f02e";
}
.icon-print:before {
  content: "\f02f";
}
.icon-camera:before {
  content: "\f030";
}
.icon-font:before {
  content: "\f031";
}
.icon-bold:before {
  content: "\f032";
}
.icon-italic:before {
  content: "\f033";
}
.icon-text-height:before {
  content: "\f034";
}
.icon-text-width:before {
  content: "\f035";
}
.icon-align-left:before {
  content: "\f036";
}
.icon-align-center:before {
  content: "\f037";
}
.icon-align-right:before {
  content: "\f038";
}
.icon-align-justify:before {
  content: "\f039";
}
.icon-list:before {
  content: "\f03a";
}
.icon-dedent:before {
  content: "\f03b";
}
.icon-outdent:before {
  content: "\f03b";
}
.icon-indent:before {
  content: "\f03c";
}
.icon-video-camera:before {
  content: "\f03d";
}
.icon-image:before {
  content: "\f03e";
}
.icon-photo:before {
  content: "\f03e";
}
.icon-picture-o:before {
  content: "\f03e";
}
.icon-pencil:before {
  content: "\f040";
}
.icon-map-marker:before {
  content: "\f041";
}
.icon-adjust:before {
  content: "\f042";
}
.icon-tint:before {
  content: "\f043";
}
.icon-edit:before {
  content: "\f044";
}
.icon-pencil-square-o:before {
  content: "\f044";
}
.icon-share-square-o:before {
  content: "\f045";
}
.icon-check-square-o:before {
  content: "\f046";
}
.icon-arrows:before {
  content: "\f047";
}
.icon-step-backward:before {
  content: "\f048";
}
.icon-fast-backward:before {
  content: "\f049";
}
.icon-backward:before {
  content: "\f04a";
}
.icon-play:before {
  content: "\f04b";
}
.icon-pause:before {
  content: "\f04c";
}
.icon-stop:before {
  content: "\f04d";
}
.icon-forward:before {
  content: "\f04e";
}
.icon-fast-forward:before {
  content: "\f050";
}
.icon-step-forward:before {
  content: "\f051";
}
.icon-eject:before {
  content: "\f052";
}
.icon-chevron-left:before {
  content: "\f053";
}
.icon-chevron-right:before {
  content: "\f054";
}
.icon-plus-circle:before {
  content: "\f055";
}
.icon-minus-circle:before {
  content: "\f056";
}
.icon-times-circle:before {
  content: "\f057";
}
.icon-check-circle:before {
  content: "\f058";
}
.icon-question-circle:before {
  content: "\f059";
}
.icon-info-circle:before {
  content: "\f05a";
}
.icon-crosshairs:before {
  content: "\f05b";
}
.icon-times-circle-o:before {
  content: "\f05c";
}
.icon-check-circle-o:before {
  content: "\f05d";
}
.icon-ban:before {
  content: "\f05e";
}
.icon-arrow-left:before {
  content: "\f060";
}
.icon-arrow-right:before {
  content: "\f061";
}
.icon-arrow-up:before {
  content: "\f062";
}
.icon-arrow-down:before {
  content: "\f063";
}
.icon-mail-forward:before {
  content: "\f064";
}
.icon-share:before {
  content: "\f064";
}
.icon-expand:before {
  content: "\f065";
}
.icon-compress:before {
  content: "\f066";
}
.icon-exclamation-circle:before {
  content: "\f06a";
}
.icon-gift:before {
  content: "\f06b";
}
.icon-leaf:before {
  content: "\f06c";
}
.icon-fire:before {
  content: "\f06d";
}
.icon-eye:before {
  content: "\f06e";
}
.icon-eye-slash:before {
  content: "\f070";
}
.icon-exclamation-triangle:before {
  content: "\f071";
}
.icon-warning:before {
  content: "\f071";
}
.icon-plane:before {
  content: "\f072";
}
.icon-calendar:before {
  content: "\f073";
}
.icon-random:before {
  content: "\f074";
}
.icon-comment:before {
  content: "\f075";
}
.icon-magnet:before {
  content: "\f076";
}
.icon-chevron-up:before {
  content: "\f077";
}
.icon-chevron-down:before {
  content: "\f078";
}
.icon-retweet:before {
  content: "\f079";
}
.icon-shopping-cart:before {
  content: "\f07a";
}
.icon-folder:before {
  content: "\f07b";
}
.icon-folder-open:before {
  content: "\f07c";
}
.icon-arrows-v:before {
  content: "\f07d";
}
.icon-arrows-h:before {
  content: "\f07e";
}
.icon-bar-chart:before {
  content: "\f080";
}
.icon-bar-chart-o:before {
  content: "\f080";
}
.icon-twitter-square:before {
  content: "\f081";
}
.icon-facebook-square:before {
  content: "\f082";
}
.icon-camera-retro:before {
  content: "\f083";
}
.icon-key:before {
  content: "\f084";
}
.icon-cogs:before {
  content: "\f085";
}
.icon-gears:before {
  content: "\f085";
}
.icon-comments:before {
  content: "\f086";
}
.icon-thumbs-o-up:before {
  content: "\f087";
}
.icon-thumbs-o-down:before {
  content: "\f088";
}
.icon-star-half:before {
  content: "\f089";
}
.icon-heart-o:before {
  content: "\f08a";
}
.icon-sign-out:before {
  content: "\f08b";
}
.icon-linkedin-square:before {
  content: "\f08c";
}
.icon-thumb-tack:before {
  content: "\f08d";
}
.icon-external-link:before {
  content: "\f08e";
}
.icon-sign-in:before {
  content: "\f090";
}
.icon-trophy:before {
  content: "\f091";
}
.icon-github-square:before {
  content: "\f092";
}
.icon-upload:before {
  content: "\f093";
}
.icon-lemon-o:before {
  content: "\f094";
}
.icon-phone:before {
  content: "\f095";
}
.icon-square-o:before {
  content: "\f096";
}
.icon-bookmark-o:before {
  content: "\f097";
}
.icon-phone-square:before {
  content: "\f098";
}
.icon-twitter:before {
  content: "\f099";
}
.icon-facebook:before {
  content: "\f09a";
}
.icon-facebook-f:before {
  content: "\f09a";
}
.icon-github:before {
  content: "\f09b";
}
.icon-unlock:before {
  content: "\f09c";
}
.icon-credit-card:before {
  content: "\f09d";
}
.icon-feed:before {
  content: "\f09e";
}
.icon-rss:before {
  content: "\f09e";
}
.icon-hdd-o:before {
  content: "\f0a0";
}
.icon-bullhorn:before {
  content: "\f0a1";
}
.icon-bell-o:before {
  content: "\f0a2";
}
.icon-certificate:before {
  content: "\f0a3";
}
.icon-hand-o-right:before {
  content: "\f0a4";
}
.icon-hand-o-left:before {
  content: "\f0a5";
}
.icon-hand-o-up:before {
  content: "\f0a6";
}
.icon-hand-o-down:before {
  content: "\f0a7";
}
.icon-arrow-circle-left:before {
  content: "\f0a8";
}
.icon-arrow-circle-right:before {
  content: "\f0a9";
}
.icon-arrow-circle-up:before {
  content: "\f0aa";
}
.icon-arrow-circle-down:before {
  content: "\f0ab";
}
.icon-globe:before {
  content: "\f0ac";
}
.icon-wrench:before {
  content: "\f0ad";
}
.icon-tasks:before {
  content: "\f0ae";
}
.icon-filter:before {
  content: "\f0b0";
}
.icon-briefcase:before {
  content: "\f0b1";
}
.icon-arrows-alt:before {
  content: "\f0b2";
}
.icon-group:before {
  content: "\f0c0";
}
.icon-users:before {
  content: "\f0c0";
}
.icon-chain:before {
  content: "\f0c1";
}
.icon-link:before {
  content: "\f0c1";
}
.icon-cloud:before {
  content: "\f0c2";
}
.icon-flask:before {
  content: "\f0c3";
}
.icon-cut:before {
  content: "\f0c4";
}
.icon-scissors:before {
  content: "\f0c4";
}
.icon-copy:before {
  content: "\f0c5";
}
.icon-files-o:before {
  content: "\f0c5";
}
.icon-paperclip:before {
  content: "\f0c6";
}
.icon-floppy-o:before {
  content: "\f0c7";
}
.icon-save:before {
  content: "\f0c7";
}
.icon-square:before {
  content: "\f0c8";
}
.icon-bars:before {
  content: "\f0c9";
}
.icon-navicon:before {
  content: "\f0c9";
}
.icon-reorder:before {
  content: "\f0c9";
}
.icon-list-ul:before {
  content: "\f0ca";
}
.icon-list-ol:before {
  content: "\f0cb";
}
.icon-strikethrough:before {
  content: "\f0cc";
}
.icon-underline:before {
  content: "\f0cd";
}
.icon-table:before {
  content: "\f0ce";
}
.icon-magic:before {
  content: "\f0d0";
}
.icon-truck:before {
  content: "\f0d1";
}
.icon-pinterest:before {
  content: "\f0d2";
}
.icon-pinterest-square:before {
  content: "\f0d3";
}
.icon-google-plus-square:before {
  content: "\f0d4";
}
.icon-google-plus:before {
  content: "\f0d5";
}
.icon-money:before {
  content: "\f0d6";
}
.icon-caret-down:before {
  content: "\f0d7";
}
.icon-caret-up:before {
  content: "\f0d8";
}
.icon-caret-left:before {
  content: "\f0d9";
}
.icon-caret-right:before {
  content: "\f0da";
}
.icon-columns:before {
  content: "\f0db";
}
.icon-sort:before {
  content: "\f0dc";
}
.icon-unsorted:before {
  content: "\f0dc";
}
.icon-sort-desc:before {
  content: "\f0dd";
}
.icon-sort-down:before {
  content: "\f0dd";
}
.icon-sort-asc:before {
  content: "\f0de";
}
.icon-sort-up:before {
  content: "\f0de";
}
.icon-envelope:before {
  content: "\f0e0";
}
.icon-linkedin:before {
  content: "\f0e1";
}
.icon-rotate-left:before {
  content: "\f0e2";
}
.icon-undo:before {
  content: "\f0e2";
}
.icon-gavel:before {
  content: "\f0e3";
}
.icon-legal:before {
  content: "\f0e3";
}
.icon-dashboard:before {
  content: "\f0e4";
}
.icon-tachometer:before {
  content: "\f0e4";
}
.icon-comment-o:before {
  content: "\f0e5";
}
.icon-comments-o:before {
  content: "\f0e6";
}
.icon-bolt:before {
  content: "\f0e7";
}
.icon-flash:before {
  content: "\f0e7";
}
.icon-sitemap:before {
  content: "\f0e8";
}
.icon-umbrella:before {
  content: "\f0e9";
}
.icon-clipboard:before {
  content: "\f0ea";
}
.icon-paste:before {
  content: "\f0ea";
}
.icon-lightbulb-o:before {
  content: "\f0eb";
}
.icon-exchange:before {
  content: "\f0ec";
}
.icon-cloud-download:before {
  content: "\f0ed";
}
.icon-cloud-upload:before {
  content: "\f0ee";
}
.icon-user-md:before {
  content: "\f0f0";
}
.icon-stethoscope:before {
  content: "\f0f1";
}
.icon-suitcase:before {
  content: "\f0f2";
}
.icon-bell:before {
  content: "\f0f3";
}
.icon-coffee:before {
  content: "\f0f4";
}
.icon-cutlery:before {
  content: "\f0f5";
}
.icon-file-text-o:before {
  content: "\f0f6";
}
.icon-building-o:before {
  content: "\f0f7";
}
.icon-hospital-o:before {
  content: "\f0f8";
}
.icon-ambulance:before {
  content: "\f0f9";
}
.icon-medkit:before {
  content: "\f0fa";
}
.icon-fighter-jet:before {
  content: "\f0fb";
}
.icon-beer:before {
  content: "\f0fc";
}
.icon-h-square:before {
  content: "\f0fd";
}
.icon-plus-square:before {
  content: "\f0fe";
}
.icon-angle-double-left:before {
  content: "\f100";
}
.icon-angle-double-right:before {
  content: "\f101";
}
.icon-angle-double-up:before {
  content: "\f102";
}
.icon-angle-double-down:before {
  content: "\f103";
}
.icon-angle-left:before {
  content: "\f104";
}
.icon-angle-right:before {
  content: "\f105";
}
.icon-angle-up:before {
  content: "\f106";
}
.icon-angle-down:before {
  content: "\f107";
}
.icon-desktop:before {
  content: "\f108";
}
.icon-laptop:before {
  content: "\f109";
}
.icon-tablet:before {
  content: "\f10a";
}
.icon-mobile:before {
  content: "\f10b";
}
.icon-mobile-phone:before {
  content: "\f10b";
}
.icon-circle-o:before {
  content: "\f10c";
}
.icon-quote-left:before {
  content: "\f10d";
}
.icon-quote-right:before {
  content: "\f10e";
}
.icon-spinner:before {
  content: "\f110";
}
.icon-circle:before {
  content: "\f111";
}
.icon-mail-reply:before {
  content: "\f112";
}
.icon-reply:before {
  content: "\f112";
}
.icon-github-alt:before {
  content: "\f113";
}
.icon-folder-o:before {
  content: "\f114";
}
.icon-folder-open-o:before {
  content: "\f115";
}
.icon-smile-o:before {
  content: "\f118";
}
.icon-frown-o:before {
  content: "\f119";
}
.icon-meh-o:before {
  content: "\f11a";
}
.icon-gamepad:before {
  content: "\f11b";
}
.icon-keyboard-o:before {
  content: "\f11c";
}
.icon-flag-o:before {
  content: "\f11d";
}
.icon-flag-checkered:before {
  content: "\f11e";
}
.icon-terminal:before {
  content: "\f120";
}
.icon-code:before {
  content: "\f121";
}
.icon-mail-reply-all:before {
  content: "\f122";
}
.icon-reply-all:before {
  content: "\f122";
}
.icon-star-half-empty:before {
  content: "\f123";
}
.icon-star-half-full:before {
  content: "\f123";
}
.icon-star-half-o:before {
  content: "\f123";
}
.icon-location-arrow:before {
  content: "\f124";
}
.icon-crop:before {
  content: "\f125";
}
.icon-code-fork:before {
  content: "\f126";
}
.icon-chain-broken:before {
  content: "\f127";
}
.icon-unlink:before {
  content: "\f127";
}
.icon-info:before {
  content: "\f129";
}
.icon-exclamation:before {
  content: "\f12a";
}
.icon-superscript:before {
  content: "\f12b";
}
.icon-subscript:before {
  content: "\f12c";
}
.icon-eraser:before {
  content: "\f12d";
}
.icon-puzzle-piece:before {
  content: "\f12e";
}
.icon-microphone:before {
  content: "\f130";
}
.icon-microphone-slash:before {
  content: "\f131";
}
.icon-shield:before {
  content: "\f132";
}
.icon-calendar-o:before {
  content: "\f133";
}
.icon-fire-extinguisher:before {
  content: "\f134";
}
.icon-rocket:before {
  content: "\f135";
}
.icon-maxcdn:before {
  content: "\f136";
}
.icon-chevron-circle-left:before {
  content: "\f137";
}
.icon-chevron-circle-right:before {
  content: "\f138";
}
.icon-chevron-circle-up:before {
  content: "\f139";
}
.icon-chevron-circle-down:before {
  content: "\f13a";
}
.icon-html5:before {
  content: "\f13b";
}
.icon-css3:before {
  content: "\f13c";
}
.icon-anchor:before {
  content: "\f13d";
}
.icon-unlock-alt:before {
  content: "\f13e";
}
.icon-bullseye:before {
  content: "\f140";
}
.icon-ellipsis-h:before {
  content: "\f141";
}
.icon-ellipsis-v:before {
  content: "\f142";
}
.icon-rss-square:before {
  content: "\f143";
}
.icon-play-circle:before {
  content: "\f144";
}
.icon-ticket:before {
  content: "\f145";
}
.icon-minus-square:before {
  content: "\f146";
}
.icon-minus-square-o:before {
  content: "\f147";
}
.icon-level-up:before {
  content: "\f148";
}
.icon-level-down:before {
  content: "\f149";
}
.icon-check-square:before {
  content: "\f14a";
}
.icon-pencil-square:before {
  content: "\f14b";
}
.icon-external-link-square:before {
  content: "\f14c";
}
.icon-share-square:before {
  content: "\f14d";
}
.icon-compass:before {
  content: "\f14e";
}
.icon-caret-square-o-down:before {
  content: "\f150";
}
.icon-toggle-down:before {
  content: "\f150";
}
.icon-caret-square-o-up:before {
  content: "\f151";
}
.icon-toggle-up:before {
  content: "\f151";
}
.icon-caret-square-o-right:before {
  content: "\f152";
}
.icon-toggle-right:before {
  content: "\f152";
}
.icon-eur:before {
  content: "\f153";
}
.icon-euro:before {
  content: "\f153";
}
.icon-gbp:before {
  content: "\f154";
}
.icon-dollar:before {
  content: "\f155";
}
.icon-usd:before {
  content: "\f155";
}
.icon-inr:before {
  content: "\f156";
}
.icon-rupee:before {
  content: "\f156";
}
.icon-cny:before {
  content: "\f157";
}
.icon-jpy:before {
  content: "\f157";
}
.icon-rmb:before {
  content: "\f157";
}
.icon-yen:before {
  content: "\f157";
}
.icon-rouble:before {
  content: "\f158";
}
.icon-rub:before {
  content: "\f158";
}
.icon-ruble:before {
  content: "\f158";
}
.icon-krw:before {
  content: "\f159";
}
.icon-won:before {
  content: "\f159";
}
.icon-bitcoin:before {
  content: "\f15a";
}
.icon-btc:before {
  content: "\f15a";
}
.icon-file:before {
  content: "\f15b";
}
.icon-file-text:before {
  content: "\f15c";
}
.icon-sort-alpha-asc:before {
  content: "\f15d";
}
.icon-sort-alpha-desc:before {
  content: "\f15e";
}
.icon-sort-amount-asc:before {
  content: "\f160";
}
.icon-sort-amount-desc:before {
  content: "\f161";
}
.icon-sort-numeric-asc:before {
  content: "\f162";
}
.icon-sort-numeric-desc:before {
  content: "\f163";
}
.icon-thumbs-up:before {
  content: "\f164";
}
.icon-thumbs-down:before {
  content: "\f165";
}
.icon-youtube-square:before {
  content: "\f166";
}
.icon-youtube:before {
  content: "\f167";
}
.icon-xing:before {
  content: "\f168";
}
.icon-xing-square:before {
  content: "\f169";
}
.icon-youtube-play:before {
  content: "\f16a";
}
.icon-dropbox:before {
  content: "\f16b";
}
.icon-stack-overflow:before {
  content: "\f16c";
}
.icon-instagram:before {
  content: "\f16d";
}
.icon-flickr:before {
  content: "\f16e";
}
.icon-adn:before {
  content: "\f170";
}
.icon-bitbucket:before {
  content: "\f171";
}
.icon-bitbucket-square:before {
  content: "\f172";
}
.icon-tumblr:before {
  content: "\f173";
}
.icon-tumblr-square:before {
  content: "\f174";
}
.icon-long-arrow-down:before {
  content: "\f175";
}
.icon-long-arrow-up:before {
  content: "\f176";
}
.icon-long-arrow-left:before {
  content: "\f177";
}
.icon-long-arrow-right:before {
  content: "\f178";
}
.icon-apple:before {
  content: "\f179";
}
.icon-windows:before {
  content: "\f17a";
}
.icon-android:before {
  content: "\f17b";
}
.icon-linux:before {
  content: "\f17c";
}
.icon-dribbble:before {
  content: "\f17d";
}
.icon-skype:before {
  content: "\f17e";
}
.icon-foursquare:before {
  content: "\f180";
}
.icon-trello:before {
  content: "\f181";
}
.icon-female:before {
  content: "\f182";
}
.icon-male:before {
  content: "\f183";
}
.icon-gittip:before {
  content: "\f184";
}
.icon-gratipay:before {
  content: "\f184";
}
.icon-sun-o:before {
  content: "\f185";
}
.icon-moon-o:before {
  content: "\f186";
}
.icon-archive:before {
  content: "\f187";
}
.icon-bug:before {
  content: "\f188";
}
.icon-vk:before {
  content: "\f189";
}
.icon-weibo:before {
  content: "\f18a";
}
.icon-renren:before {
  content: "\f18b";
}
.icon-pagelines:before {
  content: "\f18c";
}
.icon-stack-exchange:before {
  content: "\f18d";
}
.icon-arrow-circle-o-right:before {
  content: "\f18e";
}
.icon-arrow-circle-o-left:before {
  content: "\f190";
}
.icon-caret-square-o-left:before {
  content: "\f191";
}
.icon-toggle-left:before {
  content: "\f191";
}
.icon-dot-circle-o:before {
  content: "\f192";
}
.icon-wheelchair:before {
  content: "\f193";
}
.icon-vimeo-square:before {
  content: "\f194";
}
.icon-try:before {
  content: "\f195";
}
.icon-turkish-lira:before {
  content: "\f195";
}
.icon-plus-square-o:before {
  content: "\f196";
}
.icon-space-shuttle:before {
  content: "\f197";
}
.icon-slack:before {
  content: "\f198";
}
.icon-envelope-square:before {
  content: "\f199";
}
.icon-wordpress:before {
  content: "\f19a";
}
.icon-openid:before {
  content: "\f19b";
}
.icon-bank:before {
  content: "\f19c";
}
.icon-institution:before {
  content: "\f19c";
}
.icon-university:before {
  content: "\f19c";
}
.icon-graduation-cap:before {
  content: "\f19d";
}
.icon-mortar-board:before {
  content: "\f19d";
}
.icon-yahoo:before {
  content: "\f19e";
}
.icon-google:before {
  content: "\f1a0";
}
.icon-reddit:before {
  content: "\f1a1";
}
.icon-reddit-square:before {
  content: "\f1a2";
}
.icon-stumbleupon-circle:before {
  content: "\f1a3";
}
.icon-stumbleupon:before {
  content: "\f1a4";
}
.icon-delicious:before {
  content: "\f1a5";
}
.icon-digg:before {
  content: "\f1a6";
}
.icon-pied-piper-pp:before {
  content: "\f1a7";
}
.icon-pied-piper-alt:before {
  content: "\f1a8";
}
.icon-drupal:before {
  content: "\f1a9";
}
.icon-joomla:before {
  content: "\f1aa";
}
.icon-language:before {
  content: "\f1ab";
}
.icon-fax:before {
  content: "\f1ac";
}
.icon-building:before {
  content: "\f1ad";
}
.icon-child:before {
  content: "\f1ae";
}
.icon-paw:before {
  content: "\f1b0";
}
.icon-spoon:before {
  content: "\f1b1";
}
.icon-cube:before {
  content: "\f1b2";
}
.icon-cubes:before {
  content: "\f1b3";
}
.icon-behance:before {
  content: "\f1b4";
}
.icon-behance-square:before {
  content: "\f1b5";
}
.icon-steam:before {
  content: "\f1b6";
}
.icon-steam-square:before {
  content: "\f1b7";
}
.icon-recycle:before {
  content: "\f1b8";
}
.icon-automobile:before {
  content: "\f1b9";
}
.icon-car:before {
  content: "\f1b9";
}
.icon-cab:before {
  content: "\f1ba";
}
.icon-taxi:before {
  content: "\f1ba";
}
.icon-tree:before {
  content: "\f1bb";
}
.icon-spotify:before {
  content: "\f1bc";
}
.icon-deviantart:before {
  content: "\f1bd";
}
.icon-soundcloud:before {
  content: "\f1be";
}
.icon-database:before {
  content: "\f1c0";
}
.icon-file-pdf-o:before {
  content: "\f1c1";
}
.icon-file-word-o:before {
  content: "\f1c2";
}
.icon-file-excel-o:before {
  content: "\f1c3";
}
.icon-file-powerpoint-o:before {
  content: "\f1c4";
}
.icon-file-image-o:before {
  content: "\f1c5";
}
.icon-file-photo-o:before {
  content: "\f1c5";
}
.icon-file-picture-o:before {
  content: "\f1c5";
}
.icon-file-archive-o:before {
  content: "\f1c6";
}
.icon-file-zip-o:before {
  content: "\f1c6";
}
.icon-file-audio-o:before {
  content: "\f1c7";
}
.icon-file-sound-o:before {
  content: "\f1c7";
}
.icon-file-movie-o:before {
  content: "\f1c8";
}
.icon-file-video-o:before {
  content: "\f1c8";
}
.icon-file-code-o:before {
  content: "\f1c9";
}
.icon-vine:before {
  content: "\f1ca";
}
.icon-codepen:before {
  content: "\f1cb";
}
.icon-jsfiddle:before {
  content: "\f1cc";
}
.icon-life-bouy:before {
  content: "\f1cd";
}
.icon-life-buoy:before {
  content: "\f1cd";
}
.icon-life-ring:before {
  content: "\f1cd";
}
.icon-life-saver:before {
  content: "\f1cd";
}
.icon-support:before {
  content: "\f1cd";
}
.icon-circle-o-notch:before {
  content: "\f1ce";
}
.icon-ra:before {
  content: "\f1d0";
}
.icon-rebel:before {
  content: "\f1d0";
}
.icon-resistance:before {
  content: "\f1d0";
}
.icon-empire:before {
  content: "\f1d1";
}
.icon-ge:before {
  content: "\f1d1";
}
.icon-git-square:before {
  content: "\f1d2";
}
.icon-git:before {
  content: "\f1d3";
}
.icon-hacker-news:before {
  content: "\f1d4";
}
.icon-y-combinator-square:before {
  content: "\f1d4";
}
.icon-yc-square:before {
  content: "\f1d4";
}
.icon-tencent-weibo:before {
  content: "\f1d5";
}
.icon-qq:before {
  content: "\f1d6";
}
.icon-wechat:before {
  content: "\f1d7";
}
.icon-weixin:before {
  content: "\f1d7";
}
.icon-paper-plane:before {
  content: "\f1d8";
}
.icon-send:before {
  content: "\f1d8";
}
.icon-paper-plane-o:before {
  content: "\f1d9";
}
.icon-send-o:before {
  content: "\f1d9";
}
.icon-history:before {
  content: "\f1da";
}
.icon-circle-thin:before {
  content: "\f1db";
}
.icon-header:before {
  content: "\f1dc";
}
.icon-paragraph:before {
  content: "\f1dd";
}
.icon-sliders:before {
  content: "\f1de";
}
.icon-share-alt:before {
  content: "\f1e0";
}
.icon-share-alt-square:before {
  content: "\f1e1";
}
.icon-bomb:before {
  content: "\f1e2";
}
.icon-futbol-o:before {
  content: "\f1e3";
}
.icon-soccer-ball-o:before {
  content: "\f1e3";
}
.icon-tty:before {
  content: "\f1e4";
}
.icon-binoculars:before {
  content: "\f1e5";
}
.icon-plug:before {
  content: "\f1e6";
}
.icon-slideshare:before {
  content: "\f1e7";
}
.icon-twitch:before {
  content: "\f1e8";
}
.icon-yelp:before {
  content: "\f1e9";
}
.icon-newspaper-o:before {
  content: "\f1ea";
}
.icon-wifi:before {
  content: "\f1eb";
}
.icon-calculator:before {
  content: "\f1ec";
}
.icon-paypal:before {
  content: "\f1ed";
}
.icon-google-wallet:before {
  content: "\f1ee";
}
.icon-cc-visa:before {
  content: "\f1f0";
}
.icon-cc-mastercard:before {
  content: "\f1f1";
}
.icon-cc-discover:before {
  content: "\f1f2";
}
.icon-cc-amex:before {
  content: "\f1f3";
}
.icon-cc-paypal:before {
  content: "\f1f4";
}
.icon-cc-stripe:before {
  content: "\f1f5";
}
.icon-bell-slash:before {
  content: "\f1f6";
}
.icon-bell-slash-o:before {
  content: "\f1f7";
}
.icon-trash:before {
  content: "\f1f8";
}
.icon-copyright:before {
  content: "\f1f9";
}
.icon-at:before {
  content: "\f1fa";
}
.icon-eyedropper:before {
  content: "\f1fb";
}
.icon-paint-brush:before {
  content: "\f1fc";
}
.icon-birthday-cake:before {
  content: "\f1fd";
}
.icon-area-chart:before {
  content: "\f1fe";
}
.icon-pie-chart:before {
  content: "\f200";
}
.icon-line-chart:before {
  content: "\f201";
}
.icon-lastfm:before {
  content: "\f202";
}
.icon-lastfm-square:before {
  content: "\f203";
}
.icon-toggle-off:before {
  content: "\f204";
}
.icon-toggle-on:before {
  content: "\f205";
}
.icon-bicycle:before {
  content: "\f206";
}
.icon-bus:before {
  content: "\f207";
}
.icon-ioxhost:before {
  content: "\f208";
}
.icon-angellist:before {
  content: "\f209";
}
.icon-cc:before {
  content: "\f20a";
}
.icon-ils:before {
  content: "\f20b";
}
.icon-shekel:before {
  content: "\f20b";
}
.icon-sheqel:before {
  content: "\f20b";
}
.icon-meanpath:before {
  content: "\f20c";
}
.icon-buysellads:before {
  content: "\f20d";
}
.icon-connectdevelop:before {
  content: "\f20e";
}
.icon-dashcube:before {
  content: "\f210";
}
.icon-forumbee:before {
  content: "\f211";
}
.icon-leanpub:before {
  content: "\f212";
}
.icon-sellsy:before {
  content: "\f213";
}
.icon-shirtsinbulk:before {
  content: "\f214";
}
.icon-simplybuilt:before {
  content: "\f215";
}
.icon-skyatlas:before {
  content: "\f216";
}
.icon-cart-plus:before {
  content: "\f217";
}
.icon-cart-arrow-down:before {
  content: "\f218";
}
.icon-diamond:before {
  content: "\f219";
}
.icon-ship:before {
  content: "\f21a";
}
.icon-user-secret:before {
  content: "\f21b";
}
.icon-motorcycle:before {
  content: "\f21c";
}
.icon-street-view:before {
  content: "\f21d";
}
.icon-heartbeat:before {
  content: "\f21e";
}
.icon-venus:before {
  content: "\f221";
}
.icon-mars:before {
  content: "\f222";
}
.icon-mercury:before {
  content: "\f223";
}
.icon-intersex:before {
  content: "\f224";
}
.icon-transgender:before {
  content: "\f224";
}
.icon-transgender-alt:before {
  content: "\f225";
}
.icon-venus-double:before {
  content: "\f226";
}
.icon-mars-double:before {
  content: "\f227";
}
.icon-venus-mars:before {
  content: "\f228";
}
.icon-mars-stroke:before {
  content: "\f229";
}
.icon-mars-stroke-v:before {
  content: "\f22a";
}
.icon-mars-stroke-h:before {
  content: "\f22b";
}
.icon-neuter:before {
  content: "\f22c";
}
.icon-genderless:before {
  content: "\f22d";
}
.icon-facebook-official:before {
  content: "\f230";
}
.icon-pinterest-p:before {
  content: "\f231";
}
.icon-whatsapp:before {
  content: "\f232";
}
.icon-server:before {
  content: "\f233";
}
.icon-user-plus:before {
  content: "\f234";
}
.icon-user-times:before {
  content: "\f235";
}
.icon-bed:before {
  content: "\f236";
}
.icon-hotel:before {
  content: "\f236";
}
.icon-viacoin:before {
  content: "\f237";
}
.icon-train:before {
  content: "\f238";
}
.icon-subway:before {
  content: "\f239";
}
.icon-medium:before {
  content: "\f23a";
}
.icon-y-combinator:before {
  content: "\f23b";
}
.icon-yc:before {
  content: "\f23b";
}
.icon-optin-monster:before {
  content: "\f23c";
}
.icon-opencart:before {
  content: "\f23d";
}
.icon-expeditedssl:before {
  content: "\f23e";
}
.icon-battery:before {
  content: "\f240";
}
.icon-battery-4:before {
  content: "\f240";
}
.icon-battery-full:before {
  content: "\f240";
}
.icon-battery-3:before {
  content: "\f241";
}
.icon-battery-three-quarters:before {
  content: "\f241";
}
.icon-battery-2:before {
  content: "\f242";
}
.icon-battery-half:before {
  content: "\f242";
}
.icon-battery-1:before {
  content: "\f243";
}
.icon-battery-quarter:before {
  content: "\f243";
}
.icon-battery-0:before {
  content: "\f244";
}
.icon-battery-empty:before {
  content: "\f244";
}
.icon-mouse-pointer:before {
  content: "\f245";
}
.icon-i-cursor:before {
  content: "\f246";
}
.icon-object-group:before {
  content: "\f247";
}
.icon-object-ungroup:before {
  content: "\f248";
}
.icon-sticky-note:before {
  content: "\f249";
}
.icon-sticky-note-o:before {
  content: "\f24a";
}
.icon-cc-jcb:before {
  content: "\f24b";
}
.icon-cc-diners-club:before {
  content: "\f24c";
}
.icon-clone:before {
  content: "\f24d";
}
.icon-balance-scale:before {
  content: "\f24e";
}
.icon-hourglass-o:before {
  content: "\f250";
}
.icon-hourglass-1:before {
  content: "\f251";
}
.icon-hourglass-start:before {
  content: "\f251";
}
.icon-hourglass-2:before {
  content: "\f252";
}
.icon-hourglass-half:before {
  content: "\f252";
}
.icon-hourglass-3:before {
  content: "\f253";
}
.icon-hourglass-end:before {
  content: "\f253";
}
.icon-hourglass:before {
  content: "\f254";
}
.icon-hand-grab-o:before {
  content: "\f255";
}
.icon-hand-rock-o:before {
  content: "\f255";
}
.icon-hand-paper-o:before {
  content: "\f256";
}
.icon-hand-stop-o:before {
  content: "\f256";
}
.icon-hand-scissors-o:before {
  content: "\f257";
}
.icon-hand-lizard-o:before {
  content: "\f258";
}
.icon-hand-spock-o:before {
  content: "\f259";
}
.icon-hand-pointer-o:before {
  content: "\f25a";
}
.icon-hand-peace-o:before {
  content: "\f25b";
}
.icon-trademark:before {
  content: "\f25c";
}
.icon-registered:before {
  content: "\f25d";
}
.icon-creative-commons:before {
  content: "\f25e";
}
.icon-gg:before {
  content: "\f260";
}
.icon-gg-circle:before {
  content: "\f261";
}
.icon-tripadvisor:before {
  content: "\f262";
}
.icon-odnoklassniki:before {
  content: "\f263";
}
.icon-odnoklassniki-square:before {
  content: "\f264";
}
.icon-get-pocket:before {
  content: "\f265";
}
.icon-wikipedia-w:before {
  content: "\f266";
}
.icon-safari:before {
  content: "\f267";
}
.icon-chrome:before {
  content: "\f268";
}
.icon-firefox:before {
  content: "\f269";
}
.icon-opera:before {
  content: "\f26a";
}
.icon-internet-explorer:before {
  content: "\f26b";
}
.icon-television:before {
  content: "\f26c";
}
.icon-tv:before {
  content: "\f26c";
}
.icon-contao:before {
  content: "\f26d";
}
.icon-500px:before {
  content: "\f26e";
}
.icon-amazon:before {
  content: "\f270";
}
.icon-calendar-plus-o:before {
  content: "\f271";
}
.icon-calendar-minus-o:before {
  content: "\f272";
}
.icon-calendar-times-o:before {
  content: "\f273";
}
.icon-calendar-check-o:before {
  content: "\f274";
}
.icon-industry:before {
  content: "\f275";
}
.icon-map-pin:before {
  content: "\f276";
}
.icon-map-signs:before {
  content: "\f277";
}
.icon-map-o:before {
  content: "\f278";
}
.icon-map:before {
  content: "\f279";
}
.icon-commenting:before {
  content: "\f27a";
}
.icon-commenting-o:before {
  content: "\f27b";
}
.icon-houzz:before {
  content: "\f27c";
}
.icon-vimeo:before {
  content: "\f27d";
}
.icon-black-tie:before {
  content: "\f27e";
}
.icon-fonticons:before {
  content: "\f280";
}
.icon-reddit-alien:before {
  content: "\f281";
}
.icon-edge:before {
  content: "\f282";
}
.icon-credit-card-alt:before {
  content: "\f283";
}
.icon-codiepie:before {
  content: "\f284";
}
.icon-modx:before {
  content: "\f285";
}
.icon-fort-awesome:before {
  content: "\f286";
}
.icon-usb:before {
  content: "\f287";
}
.icon-product-hunt:before {
  content: "\f288";
}
.icon-mixcloud:before {
  content: "\f289";
}
.icon-scribd:before {
  content: "\f28a";
}
.icon-pause-circle:before {
  content: "\f28b";
}
.icon-pause-circle-o:before {
  content: "\f28c";
}
.icon-stop-circle:before {
  content: "\f28d";
}
.icon-stop-circle-o:before {
  content: "\f28e";
}
.icon-shopping-bag:before {
  content: "\f290";
}
.icon-shopping-basket:before {
  content: "\f291";
}
.icon-hashtag:before {
  content: "\f292";
}
.icon-bluetooth:before {
  content: "\f293";
}
.icon-bluetooth-b:before {
  content: "\f294";
}
.icon-percent:before {
  content: "\f295";
}
.icon-gitlab:before {
  content: "\f296";
}
.icon-wpbeginner:before {
  content: "\f297";
}
.icon-wpforms:before {
  content: "\f298";
}
.icon-envira:before {
  content: "\f299";
}
.icon-universal-access:before {
  content: "\f29a";
}
.icon-wheelchair-alt:before {
  content: "\f29b";
}
.icon-question-circle-o:before {
  content: "\f29c";
}
.icon-blind:before {
  content: "\f29d";
}
.icon-audio-description:before {
  content: "\f29e";
}
.icon-volume-control-phone:before {
  content: "\f2a0";
}
.icon-braille:before {
  content: "\f2a1";
}
.icon-assistive-listening-systems:before {
  content: "\f2a2";
}
.icon-american-sign-language-interpreting:before {
  content: "\f2a3";
}
.icon-asl-interpreting:before {
  content: "\f2a3";
}
.icon-deaf:before {
  content: "\f2a4";
}
.icon-deafness:before {
  content: "\f2a4";
}
.icon-hard-of-hearing:before {
  content: "\f2a4";
}
.icon-glide:before {
  content: "\f2a5";
}
.icon-glide-g:before {
  content: "\f2a6";
}
.icon-sign-language:before {
  content: "\f2a7";
}
.icon-signing:before {
  content: "\f2a7";
}
.icon-low-vision:before {
  content: "\f2a8";
}
.icon-viadeo:before {
  content: "\f2a9";
}
.icon-viadeo-square:before {
  content: "\f2aa";
}
.icon-snapchat:before {
  content: "\f2ab";
}
.icon-snapchat-ghost:before {
  content: "\f2ac";
}
.icon-snapchat-square:before {
  content: "\f2ad";
}
.icon-pied-piper:before {
  content: "\f2ae";
}
.icon-first-order:before {
  content: "\f2b0";
}
.icon-yoast:before {
  content: "\f2b1";
}
.icon-themeisle:before {
  content: "\f2b2";
}
.icon-google-plus-circle:before {
  content: "\f2b3";
}
.icon-google-plus-official:before {
  content: "\f2b3";
}
.icon-fa:before {
  content: "\f2b4";
}
.icon-font-awesome:before {
  content: "\f2b4";
}
.icon-handshake-o:before {
  content: "\f2b5";
}
.icon-envelope-open:before {
  content: "\f2b6";
}
.icon-envelope-open-o:before {
  content: "\f2b7";
}
.icon-linode:before {
  content: "\f2b8";
}
.icon-address-book:before {
  content: "\f2b9";
}
.icon-address-book-o:before {
  content: "\f2ba";
}
.icon-address-card:before {
  content: "\f2bb";
}
.icon-vcard:before {
  content: "\f2bb";
}
.icon-address-card-o:before {
  content: "\f2bc";
}
.icon-vcard-o:before {
  content: "\f2bc";
}
.icon-user-circle:before {
  content: "\f2bd";
}
.icon-user-circle-o:before {
  content: "\f2be";
}
.icon-user-o:before {
  content: "\f2c0";
}
.icon-id-badge:before {
  content: "\f2c1";
}
.icon-drivers-license:before {
  content: "\f2c2";
}
.icon-id-card:before {
  content: "\f2c2";
}
.icon-drivers-license-o:before {
  content: "\f2c3";
}
.icon-id-card-o:before {
  content: "\f2c3";
}
.icon-quora:before {
  content: "\f2c4";
}
.icon-free-code-camp:before {
  content: "\f2c5";
}
.icon-telegram:before {
  content: "\f2c6";
}
.icon-thermometer:before {
  content: "\f2c7";
}
.icon-thermometer-4:before {
  content: "\f2c7";
}
.icon-thermometer-full:before {
  content: "\f2c7";
}
.icon-thermometer-3:before {
  content: "\f2c8";
}
.icon-thermometer-three-quarters:before {
  content: "\f2c8";
}
.icon-thermometer-2:before {
  content: "\f2c9";
}
.icon-thermometer-half:before {
  content: "\f2c9";
}
.icon-thermometer-1:before {
  content: "\f2ca";
}
.icon-thermometer-quarter:before {
  content: "\f2ca";
}
.icon-thermometer-0:before {
  content: "\f2cb";
}
.icon-thermometer-empty:before {
  content: "\f2cb";
}
.icon-shower:before {
  content: "\f2cc";
}
.icon-bath:before {
  content: "\f2cd";
}
.icon-bathtub:before {
  content: "\f2cd";
}
.icon-s15:before {
  content: "\f2cd";
}
.icon-podcast:before {
  content: "\f2ce";
}
.icon-window-maximize:before {
  content: "\f2d0";
}
.icon-window-minimize:before {
  content: "\f2d1";
}
.icon-window-restore:before {
  content: "\f2d2";
}
.icon-times-rectangle:before {
  content: "\f2d3";
}
.icon-window-close:before {
  content: "\f2d3";
}
.icon-times-rectangle-o:before {
  content: "\f2d4";
}
.icon-window-close-o:before {
  content: "\f2d4";
}
.icon-bandcamp:before {
  content: "\f2d5";
}
.icon-grav:before {
  content: "\f2d6";
}
.icon-etsy:before {
  content: "\f2d7";
}
.icon-imdb:before {
  content: "\f2d8";
}
.icon-ravelry:before {
  content: "\f2d9";
}
.icon-eercast:before {
  content: "\f2da";
}
.icon-microchip:before {
  content: "\f2db";
}
.icon-snowflake-o:before {
  content: "\f2dc";
}
.icon-superpowers:before {
  content: "\f2dd";
}
.icon-wpexplorer:before {
  content: "\f2de";
}
.icon-meetup:before {
  content: "\f2e0";
}
.icon-3d_rotation:before {
  content: "\e84d";
}
.icon-ac_unit:before {
  content: "\eb3b";
}
.icon-alarm:before {
  content: "\e855";
}
.icon-access_alarms:before {
  content: "\e191";
}
.icon-schedule:before {
  content: "\e8b5";
}
.icon-accessibility:before {
  content: "\e84e";
}
.icon-accessible:before {
  content: "\e914";
}
.icon-account_balance:before {
  content: "\e84f";
}
.icon-account_balance_wallet:before {
  content: "\e850";
}
.icon-account_box:before {
  content: "\e851";
}
.icon-account_circle:before {
  content: "\e853";
}
.icon-adb:before {
  content: "\e60e";
}
.icon-add:before {
  content: "\e145";
}
.icon-add_a_photo:before {
  content: "\e439";
}
.icon-alarm_add:before {
  content: "\e856";
}
.icon-add_alert:before {
  content: "\e003";
}
.icon-add_box:before {
  content: "\e146";
}
.icon-add_circle:before {
  content: "\e147";
}
.icon-control_point:before {
  content: "\e3ba";
}
.icon-add_location:before {
  content: "\e567";
}
.icon-add_shopping_cart:before {
  content: "\e854";
}
.icon-queue:before {
  content: "\e03c";
}
.icon-add_to_queue:before {
  content: "\e05c";
}
.icon-adjust2:before {
  content: "\e39e";
}
.icon-airline_seat_flat:before {
  content: "\e630";
}
.icon-airline_seat_flat_angled:before {
  content: "\e631";
}
.icon-airline_seat_individual_suite:before {
  content: "\e632";
}
.icon-airline_seat_legroom_extra:before {
  content: "\e633";
}
.icon-airline_seat_legroom_normal:before {
  content: "\e634";
}
.icon-airline_seat_legroom_reduced:before {
  content: "\e635";
}
.icon-airline_seat_recline_extra:before {
  content: "\e636";
}
.icon-airline_seat_recline_normal:before {
  content: "\e637";
}
.icon-flight:before {
  content: "\e539";
}
.icon-airplanemode_inactive:before {
  content: "\e194";
}
.icon-airplay:before {
  content: "\e055";
}
.icon-airport_shuttle:before {
  content: "\eb3c";
}
.icon-alarm_off:before {
  content: "\e857";
}
.icon-alarm_on:before {
  content: "\e858";
}
.icon-album:before {
  content: "\e019";
}
.icon-all_inclusive:before {
  content: "\eb3d";
}
.icon-all_out:before {
  content: "\e90b";
}
.icon-android2:before {
  content: "\e859";
}
.icon-announcement:before {
  content: "\e85a";
}
.icon-apps:before {
  content: "\e5c3";
}
.icon-archive2:before {
  content: "\e149";
}
.icon-arrow_back:before {
  content: "\e5c4";
}
.icon-arrow_downward:before {
  content: "\e5db";
}
.icon-arrow_drop_down:before {
  content: "\e5c5";
}
.icon-arrow_drop_down_circle:before {
  content: "\e5c6";
}
.icon-arrow_drop_up:before {
  content: "\e5c7";
}
.icon-arrow_forward:before {
  content: "\e5c8";
}
.icon-arrow_upward:before {
  content: "\e5d8";
}
.icon-art_track:before {
  content: "\e060";
}
.icon-aspect_ratio:before {
  content: "\e85b";
}
.icon-poll:before {
  content: "\e801";
}
.icon-assignment:before {
  content: "\e85d";
}
.icon-assignment_ind:before {
  content: "\e85e";
}
.icon-assignment_late:before {
  content: "\e85f";
}
.icon-assignment_return:before {
  content: "\e860";
}
.icon-assignment_returned:before {
  content: "\e861";
}
.icon-assignment_turned_in:before {
  content: "\e862";
}
.icon-assistant:before {
  content: "\e39f";
}
.icon-flag2:before {
  content: "\e153";
}
.icon-attach_file:before {
  content: "\e226";
}
.icon-attach_money:before {
  content: "\e227";
}
.icon-attachment:before {
  content: "\e2bc";
}
.icon-audiotrack:before {
  content: "\e3a1";
}
.icon-autorenew:before {
  content: "\e863";
}
.icon-av_timer:before {
  content: "\e01b";
}
.icon-backspace:before {
  content: "\e14a";
}
.icon-cloud_upload:before {
  content: "\e2c3";
}
.icon-battery_alert:before {
  content: "\e19c";
}
.icon-battery_charging_full:before {
  content: "\e1a3";
}
.icon-battery_std:before {
  content: "\e1a5";
}
.icon-battery_unknown:before {
  content: "\e1a6";
}
.icon-beach_access:before {
  content: "\eb3e";
}
.icon-beenhere:before {
  content: "\e52d";
}
.icon-block:before {
  content: "\e14b";
}
.icon-bluetooth2:before {
  content: "\e1a7";
}
.icon-bluetooth_searching:before {
  content: "\e1aa";
}
.icon-bluetooth_connected:before {
  content: "\e1a8";
}
.icon-bluetooth_disabled:before {
  content: "\e1a9";
}
.icon-blur_circular:before {
  content: "\e3a2";
}
.icon-blur_linear:before {
  content: "\e3a3";
}
.icon-blur_off:before {
  content: "\e3a4";
}
.icon-blur_on:before {
  content: "\e3a5";
}
.icon-class:before {
  content: "\e86e";
}
.icon-turned_in:before {
  content: "\e8e6";
}
.icon-turned_in_not:before {
  content: "\e8e7";
}
.icon-border_all:before {
  content: "\e228";
}
.icon-border_bottom:before {
  content: "\e229";
}
.icon-border_clear:before {
  content: "\e22a";
}
.icon-border_color:before {
  content: "\e22b";
}
.icon-border_horizontal:before {
  content: "\e22c";
}
.icon-border_inner:before {
  content: "\e22d";
}
.icon-border_left:before {
  content: "\e22e";
}
.icon-border_outer:before {
  content: "\e22f";
}
.icon-border_right:before {
  content: "\e230";
}
.icon-border_style:before {
  content: "\e231";
}
.icon-border_top:before {
  content: "\e232";
}
.icon-border_vertical:before {
  content: "\e233";
}
.icon-branding_watermark:before {
  content: "\e06b";
}
.icon-brightness_1:before {
  content: "\e3a6";
}
.icon-brightness_2:before {
  content: "\e3a7";
}
.icon-brightness_3:before {
  content: "\e3a8";
}
.icon-brightness_4:before {
  content: "\e3a9";
}
.icon-brightness_low:before {
  content: "\e1ad";
}
.icon-brightness_medium:before {
  content: "\e1ae";
}
.icon-brightness_high:before {
  content: "\e1ac";
}
.icon-brightness_auto:before {
  content: "\e1ab";
}
.icon-broken_image:before {
  content: "\e3ad";
}
.icon-brush:before {
  content: "\e3ae";
}
.icon-bubble_chart:before {
  content: "\e6dd";
}
.icon-bug_report:before {
  content: "\e868";
}
.icon-build:before {
  content: "\e869";
}
.icon-burst_mode:before {
  content: "\e43c";
}
.icon-domain:before {
  content: "\e7ee";
}
.icon-business_center:before {
  content: "\eb3f";
}
.icon-cached:before {
  content: "\e86a";
}
.icon-cake:before {
  content: "\e7e9";
}
.icon-phone2:before {
  content: "\e0cd";
}
.icon-call_end:before {
  content: "\e0b1";
}
.icon-call_made:before {
  content: "\e0b2";
}
.icon-merge_type:before {
  content: "\e252";
}
.icon-call_missed:before {
  content: "\e0b4";
}
.icon-call_missed_outgoing:before {
  content: "\e0e4";
}
.icon-call_received:before {
  content: "\e0b5";
}
.icon-call_split:before {
  content: "\e0b6";
}
.icon-call_to_action:before {
  content: "\e06c";
}
.icon-camera2:before {
  content: "\e3af";
}
.icon-photo_camera:before {
  content: "\e412";
}
.icon-camera_enhance:before {
  content: "\e8fc";
}
.icon-camera_front:before {
  content: "\e3b1";
}
.icon-camera_rear:before {
  content: "\e3b2";
}
.icon-camera_roll:before {
  content: "\e3b3";
}
.icon-cancel:before {
  content: "\e5c9";
}
.icon-redeem:before {
  content: "\e8b1";
}
.icon-card_membership:before {
  content: "\e8f7";
}
.icon-card_travel:before {
  content: "\e8f8";
}
.icon-casino:before {
  content: "\eb40";
}
.icon-cast:before {
  content: "\e307";
}
.icon-cast_connected:before {
  content: "\e308";
}
.icon-center_focus_strong:before {
  content: "\e3b4";
}
.icon-center_focus_weak:before {
  content: "\e3b5";
}
.icon-change_history:before {
  content: "\e86b";
}
.icon-chat:before {
  content: "\e0b7";
}
.icon-chat_bubble:before {
  content: "\e0ca";
}
.icon-chat_bubble_outline:before {
  content: "\e0cb";
}
.icon-check2:before {
  content: "\e5ca";
}
.icon-check_box:before {
  content: "\e834";
}
.icon-check_box_outline_blank:before {
  content: "\e835";
}
.icon-check_circle:before {
  content: "\e86c";
}
.icon-navigate_before:before {
  content: "\e408";
}
.icon-navigate_next:before {
  content: "\e409";
}
.icon-child_care:before {
  content: "\eb41";
}
.icon-child_friendly:before {
  content: "\eb42";
}
.icon-chrome_reader_mode:before {
  content: "\e86d";
}
.icon-close2:before {
  content: "\e5cd";
}
.icon-clear_all:before {
  content: "\e0b8";
}
.icon-closed_caption:before {
  content: "\e01c";
}
.icon-wb_cloudy:before {
  content: "\e42d";
}
.icon-cloud_circle:before {
  content: "\e2be";
}
.icon-cloud_done:before {
  content: "\e2bf";
}
.icon-cloud_download:before {
  content: "\e2c0";
}
.icon-cloud_off:before {
  content: "\e2c1";
}
.icon-cloud_queue:before {
  content: "\e2c2";
}
.icon-code2:before {
  content: "\e86f";
}
.icon-photo_library:before {
  content: "\e413";
}
.icon-collections_bookmark:before {
  content: "\e431";
}
.icon-palette:before {
  content: "\e40a";
}
.icon-colorize:before {
  content: "\e3b8";
}
.icon-comment2:before {
  content: "\e0b9";
}
.icon-compare:before {
  content: "\e3b9";
}
.icon-compare_arrows:before {
  content: "\e915";
}
.icon-laptop2:before {
  content: "\e31e";
}
.icon-confirmation_number:before {
  content: "\e638";
}
.icon-contact_mail:before {
  content: "\e0d0";
}
.icon-contact_phone:before {
  content: "\e0cf";
}
.icon-contacts:before {
  content: "\e0ba";
}
.icon-content_copy:before {
  content: "\e14d";
}
.icon-content_cut:before {
  content: "\e14e";
}
.icon-content_paste:before {
  content: "\e14f";
}
.icon-control_point_duplicate:before {
  content: "\e3bb";
}
.icon-copyright2:before {
  content: "\e90c";
}
.icon-mode_edit:before {
  content: "\e254";
}
.icon-create_new_folder:before {
  content: "\e2cc";
}
.icon-payment:before {
  content: "\e8a1";
}
.icon-crop2:before {
  content: "\e3be";
}
.icon-crop_16_9:before {
  content: "\e3bc";
}
.icon-crop_3_2:before {
  content: "\e3bd";
}
.icon-crop_landscape:before {
  content: "\e3c3";
}
.icon-crop_7_5:before {
  content: "\e3c0";
}
.icon-crop_din:before {
  content: "\e3c1";
}
.icon-crop_free:before {
  content: "\e3c2";
}
.icon-crop_original:before {
  content: "\e3c4";
}
.icon-crop_portrait:before {
  content: "\e3c5";
}
.icon-crop_rotate:before {
  content: "\e437";
}
.icon-crop_square:before {
  content: "\e3c6";
}
.icon-dashboard2:before {
  content: "\e871";
}
.icon-data_usage:before {
  content: "\e1af";
}
.icon-date_range:before {
  content: "\e916";
}
.icon-dehaze:before {
  content: "\e3c7";
}
.icon-delete:before {
  content: "\e872";
}
.icon-delete_forever:before {
  content: "\e92b";
}
.icon-delete_sweep:before {
  content: "\e16c";
}
.icon-description:before {
  content: "\e873";
}
.icon-desktop_mac:before {
  content: "\e30b";
}
.icon-desktop_windows:before {
  content: "\e30c";
}
.icon-details:before {
  content: "\e3c8";
}
.icon-developer_board:before {
  content: "\e30d";
}
.icon-developer_mode:before {
  content: "\e1b0";
}
.icon-device_hub:before {
  content: "\e335";
}
.icon-phonelink:before {
  content: "\e326";
}
.icon-devices_other:before {
  content: "\e337";
}
.icon-dialer_sip:before {
  content: "\e0bb";
}
.icon-dialpad:before {
  content: "\e0bc";
}
.icon-directions:before {
  content: "\e52e";
}
.icon-directions_bike:before {
  content: "\e52f";
}
.icon-directions_boat:before {
  content: "\e532";
}
.icon-directions_bus:before {
  content: "\e530";
}
.icon-directions_car:before {
  content: "\e531";
}
.icon-directions_railway:before {
  content: "\e534";
}
.icon-directions_run:before {
  content: "\e566";
}
.icon-directions_transit:before {
  content: "\e535";
}
.icon-directions_walk:before {
  content: "\e536";
}
.icon-disc_full:before {
  content: "\e610";
}
.icon-dns:before {
  content: "\e875";
}
.icon-not_interested:before {
  content: "\e033";
}
.icon-do_not_disturb_alt:before {
  content: "\e611";
}
.icon-do_not_disturb_off:before {
  content: "\e643";
}
.icon-remove_circle:before {
  content: "\e15c";
}
.icon-dock:before {
  content: "\e30e";
}
.icon-done:before {
  content: "\e876";
}
.icon-done_all:before {
  content: "\e877";
}
.icon-donut_large:before {
  content: "\e917";
}
.icon-donut_small:before {
  content: "\e918";
}
.icon-drafts:before {
  content: "\e151";
}
.icon-drag_handle:before {
  content: "\e25d";
}
.icon-time_to_leave:before {
  content: "\e62c";
}
.icon-dvr:before {
  content: "\e1b2";
}
.icon-edit_location:before {
  content: "\e568";
}
.icon-eject2:before {
  content: "\e8fb";
}
.icon-markunread:before {
  content: "\e159";
}
.icon-enhanced_encryption:before {
  content: "\e63f";
}
.icon-equalizer:before {
  content: "\e01d";
}
.icon-error:before {
  content: "\e000";
}
.icon-error_outline:before {
  content: "\e001";
}
.icon-euro_symbol:before {
  content: "\e926";
}
.icon-ev_station:before {
  content: "\e56d";
}
.icon-insert_invitation:before {
  content: "\e24f";
}
.icon-event_available:before {
  content: "\e614";
}
.icon-event_busy:before {
  content: "\e615";
}
.icon-event_note:before {
  content: "\e616";
}
.icon-event_seat:before {
  content: "\e903";
}
.icon-exit_to_app:before {
  content: "\e879";
}
.icon-expand_less:before {
  content: "\e5ce";
}
.icon-expand_more:before {
  content: "\e5cf";
}
.icon-explicit:before {
  content: "\e01e";
}
.icon-explore:before {
  content: "\e87a";
}
.icon-exposure:before {
  content: "\e3ca";
}
.icon-exposure_neg_1:before {
  content: "\e3cb";
}
.icon-exposure_neg_2:before {
  content: "\e3cc";
}
.icon-exposure_plus_1:before {
  content: "\e3cd";
}
.icon-exposure_plus_2:before {
  content: "\e3ce";
}
.icon-exposure_zero:before {
  content: "\e3cf";
}
.icon-extension:before {
  content: "\e87b";
}
.icon-face:before {
  content: "\e87c";
}
.icon-fast_forward:before {
  content: "\e01f";
}
.icon-fast_rewind:before {
  content: "\e020";
}
.icon-favorite:before {
  content: "\e87d";
}
.icon-favorite_border:before {
  content: "\e87e";
}
.icon-featured_play_list:before {
  content: "\e06d";
}
.icon-featured_video:before {
  content: "\e06e";
}
.icon-sms_failed:before {
  content: "\e626";
}
.icon-fiber_dvr:before {
  content: "\e05d";
}
.icon-fiber_manual_record:before {
  content: "\e061";
}
.icon-fiber_new:before {
  content: "\e05e";
}
.icon-fiber_pin:before {
  content: "\e06a";
}
.icon-fiber_smart_record:before {
  content: "\e062";
}
.icon-get_app:before {
  content: "\e884";
}
.icon-file_upload:before {
  content: "\e2c6";
}
.icon-filter2:before {
  content: "\e3d3";
}
.icon-filter_1:before {
  content: "\e3d0";
}
.icon-filter_2:before {
  content: "\e3d1";
}
.icon-filter_3:before {
  content: "\e3d2";
}
.icon-filter_4:before {
  content: "\e3d4";
}
.icon-filter_5:before {
  content: "\e3d5";
}
.icon-filter_6:before {
  content: "\e3d6";
}
.icon-filter_7:before {
  content: "\e3d7";
}
.icon-filter_8:before {
  content: "\e3d8";
}
.icon-filter_9:before {
  content: "\e3d9";
}
.icon-filter_9_plus:before {
  content: "\e3da";
}
.icon-filter_b_and_w:before {
  content: "\e3db";
}
.icon-filter_center_focus:before {
  content: "\e3dc";
}
.icon-filter_drama:before {
  content: "\e3dd";
}
.icon-filter_frames:before {
  content: "\e3de";
}
.icon-terrain:before {
  content: "\e564";
}
.icon-filter_list:before {
  content: "\e152";
}
.icon-filter_none:before {
  content: "\e3e0";
}
.icon-filter_tilt_shift:before {
  content: "\e3e2";
}
.icon-filter_vintage:before {
  content: "\e3e3";
}
.icon-find_in_page:before {
  content: "\e880";
}
.icon-find_replace:before {
  content: "\e881";
}
.icon-fingerprint:before {
  content: "\e90d";
}
.icon-first_page:before {
  content: "\e5dc";
}
.icon-fitness_center:before {
  content: "\eb43";
}
.icon-flare:before {
  content: "\e3e4";
}
.icon-flash_auto:before {
  content: "\e3e5";
}
.icon-flash_off:before {
  content: "\e3e6";
}
.icon-flash_on:before {
  content: "\e3e7";
}
.icon-flight_land:before {
  content: "\e904";
}
.icon-flight_takeoff:before {
  content: "\e905";
}
.icon-flip:before {
  content: "\e3e8";
}
.icon-flip_to_back:before {
  content: "\e882";
}
.icon-flip_to_front:before {
  content: "\e883";
}
.icon-folder2:before {
  content: "\e2c7";
}
.icon-folder_open:before {
  content: "\e2c8";
}
.icon-folder_shared:before {
  content: "\e2c9";
}
.icon-folder_special:before {
  content: "\e617";
}
.icon-font_download:before {
  content: "\e167";
}
.icon-format_align_center:before {
  content: "\e234";
}
.icon-format_align_justify:before {
  content: "\e235";
}
.icon-format_align_left:before {
  content: "\e236";
}
.icon-format_align_right:before {
  content: "\e237";
}
.icon-format_bold:before {
  content: "\e238";
}
.icon-format_clear:before {
  content: "\e239";
}
.icon-format_color_fill:before {
  content: "\e23a";
}
.icon-format_color_reset:before {
  content: "\e23b";
}
.icon-format_color_text:before {
  content: "\e23c";
}
.icon-format_indent_decrease:before {
  content: "\e23d";
}
.icon-format_indent_increase:before {
  content: "\e23e";
}
.icon-format_italic:before {
  content: "\e23f";
}
.icon-format_line_spacing:before {
  content: "\e240";
}
.icon-format_list_bulleted:before {
  content: "\e241";
}
.icon-format_list_numbered:before {
  content: "\e242";
}
.icon-format_paint:before {
  content: "\e243";
}
.icon-format_quote:before {
  content: "\e244";
}
.icon-format_shapes:before {
  content: "\e25e";
}
.icon-format_size:before {
  content: "\e245";
}
.icon-format_strikethrough:before {
  content: "\e246";
}
.icon-format_textdirection_l_to_r:before {
  content: "\e247";
}
.icon-format_textdirection_r_to_l:before {
  content: "\e248";
}
.icon-format_underlined:before {
  content: "\e249";
}
.icon-question_answer:before {
  content: "\e8af";
}
.icon-forward2:before {
  content: "\e154";
}
.icon-forward_10:before {
  content: "\e056";
}
.icon-forward_30:before {
  content: "\e057";
}
.icon-forward_5:before {
  content: "\e058";
}
.icon-free_breakfast:before {
  content: "\eb44";
}
.icon-fullscreen:before {
  content: "\e5d0";
}
.icon-fullscreen_exit:before {
  content: "\e5d1";
}
.icon-functions:before {
  content: "\e24a";
}
.icon-g_translate:before {
  content: "\e927";
}
.icon-games:before {
  content: "\e021";
}
.icon-gavel2:before {
  content: "\e90e";
}
.icon-gesture:before {
  content: "\e155";
}
.icon-gif:before {
  content: "\e908";
}
.icon-goat:before {
  content: "\e900";
}
.icon-golf_course:before {
  content: "\eb45";
}
.icon-my_location:before {
  content: "\e55c";
}
.icon-location_searching:before {
  content: "\e1b7";
}
.icon-location_disabled:before {
  content: "\e1b6";
}
.icon-star2:before {
  content: "\e838";
}
.icon-gradient:before {
  content: "\e3e9";
}
.icon-grain:before {
  content: "\e3ea";
}
.icon-graphic_eq:before {
  content: "\e1b8";
}
.icon-grid_off:before {
  content: "\e3eb";
}
.icon-grid_on:before {
  content: "\e3ec";
}
.icon-people:before {
  content: "\e7fb";
}
.icon-group_add:before {
  content: "\e7f0";
}
.icon-group_work:before {
  content: "\e886";
}
.icon-hd:before {
  content: "\e052";
}
.icon-hdr_off:before {
  content: "\e3ed";
}
.icon-hdr_on:before {
  content: "\e3ee";
}
.icon-hdr_strong:before {
  content: "\e3f1";
}
.icon-hdr_weak:before {
  content: "\e3f2";
}
.icon-headset:before {
  content: "\e310";
}
.icon-headset_mic:before {
  content: "\e311";
}
.icon-healing:before {
  content: "\e3f3";
}
.icon-hearing:before {
  content: "\e023";
}
.icon-help:before {
  content: "\e887";
}
.icon-help_outline:before {
  content: "\e8fd";
}
.icon-high_quality:before {
  content: "\e024";
}
.icon-highlight:before {
  content: "\e25f";
}
.icon-highlight_off:before {
  content: "\e888";
}
.icon-restore:before {
  content: "\e8b3";
}
.icon-home2:before {
  content: "\e88a";
}
.icon-hot_tub:before {
  content: "\eb46";
}
.icon-local_hotel:before {
  content: "\e549";
}
.icon-hourglass_empty:before {
  content: "\e88b";
}
.icon-hourglass_full:before {
  content: "\e88c";
}
.icon-http:before {
  content: "\e902";
}
.icon-lock2:before {
  content: "\e897";
}
.icon-photo2:before {
  content: "\e410";
}
.icon-image_aspect_ratio:before {
  content: "\e3f5";
}
.icon-import_contacts:before {
  content: "\e0e0";
}
.icon-import_export:before {
  content: "\e0c3";
}
.icon-important_devices:before {
  content: "\e912";
}
.icon-inbox2:before {
  content: "\e156";
}
.icon-indeterminate_check_box:before {
  content: "\e909";
}
.icon-info2:before {
  content: "\e88e";
}
.icon-info_outline:before {
  content: "\e88f";
}
.icon-input:before {
  content: "\e890";
}
.icon-insert_comment:before {
  content: "\e24c";
}
.icon-insert_drive_file:before {
  content: "\e24d";
}
.icon-tag_faces:before {
  content: "\e420";
}
.icon-link2:before {
  content: "\e157";
}
.icon-invert_colors:before {
  content: "\e891";
}
.icon-invert_colors_off:before {
  content: "\e0c4";
}
.icon-iso:before {
  content: "\e3f6";
}
.icon-keyboard:before {
  content: "\e312";
}
.icon-keyboard_arrow_down:before {
  content: "\e313";
}
.icon-keyboard_arrow_left:before {
  content: "\e314";
}
.icon-keyboard_arrow_right:before {
  content: "\e315";
}
.icon-keyboard_arrow_up:before {
  content: "\e316";
}
.icon-keyboard_backspace:before {
  content: "\e317";
}
.icon-keyboard_capslock:before {
  content: "\e318";
}
.icon-keyboard_hide:before {
  content: "\e31a";
}
.icon-keyboard_return:before {
  content: "\e31b";
}
.icon-keyboard_tab:before {
  content: "\e31c";
}
.icon-keyboard_voice:before {
  content: "\e31d";
}
.icon-kitchen:before {
  content: "\eb47";
}
.icon-label:before {
  content: "\e892";
}
.icon-label_outline:before {
  content: "\e893";
}
.icon-language2:before {
  content: "\e894";
}
.icon-laptop_chromebook:before {
  content: "\e31f";
}
.icon-laptop_mac:before {
  content: "\e320";
}
.icon-laptop_windows:before {
  content: "\e321";
}
.icon-last_page:before {
  content: "\e5dd";
}
.icon-open_in_new:before {
  content: "\e89e";
}
.icon-layers:before {
  content: "\e53b";
}
.icon-layers_clear:before {
  content: "\e53c";
}
.icon-leak_add:before {
  content: "\e3f8";
}
.icon-leak_remove:before {
  content: "\e3f9";
}
.icon-lens:before {
  content: "\e3fa";
}
.icon-library_books:before {
  content: "\e02f";
}
.icon-library_music:before {
  content: "\e030";
}
.icon-lightbulb_outline:before {
  content: "\e90f";
}
.icon-line_style:before {
  content: "\e919";
}
.icon-line_weight:before {
  content: "\e91a";
}
.icon-linear_scale:before {
  content: "\e260";
}
.icon-linked_camera:before {
  content: "\e438";
}
.icon-list2:before {
  content: "\e896";
}
.icon-live_help:before {
  content: "\e0c6";
}
.icon-live_tv:before {
  content: "\e639";
}
.icon-local_play:before {
  content: "\e553";
}
.icon-local_airport:before {
  content: "\e53d";
}
.icon-local_atm:before {
  content: "\e53e";
}
.icon-local_bar:before {
  content: "\e540";
}
.icon-local_cafe:before {
  content: "\e541";
}
.icon-local_car_wash:before {
  content: "\e542";
}
.icon-local_convenience_store:before {
  content: "\e543";
}
.icon-restaurant_menu:before {
  content: "\e561";
}
.icon-local_drink:before {
  content: "\e544";
}
.icon-local_florist:before {
  content: "\e545";
}
.icon-local_gas_station:before {
  content: "\e546";
}
.icon-shopping_cart:before {
  content: "\e8cc";
}
.icon-local_hospital:before {
  content: "\e548";
}
.icon-local_laundry_service:before {
  content: "\e54a";
}
.icon-local_library:before {
  content: "\e54b";
}
.icon-local_mall:before {
  content: "\e54c";
}
.icon-theaters:before {
  content: "\e8da";
}
.icon-local_offer:before {
  content: "\e54e";
}
.icon-local_parking:before {
  content: "\e54f";
}
.icon-local_pharmacy:before {
  content: "\e550";
}
.icon-local_pizza:before {
  content: "\e552";
}
.icon-print2:before {
  content: "\e8ad";
}
.icon-local_shipping:before {
  content: "\e558";
}
.icon-local_taxi:before {
  content: "\e559";
}
.icon-location_city:before {
  content: "\e7f1";
}
.icon-location_off:before {
  content: "\e0c7";
}
.icon-room:before {
  content: "\e8b4";
}
.icon-lock_open:before {
  content: "\e898";
}
.icon-lock_outline:before {
  content: "\e899";
}
.icon-looks:before {
  content: "\e3fc";
}
.icon-looks_3:before {
  content: "\e3fb";
}
.icon-looks_4:before {
  content: "\e3fd";
}
.icon-looks_5:before {
  content: "\e3fe";
}
.icon-looks_6:before {
  content: "\e3ff";
}
.icon-looks_one:before {
  content: "\e400";
}
.icon-looks_two:before {
  content: "\e401";
}
.icon-sync:before {
  content: "\e627";
}
.icon-loupe:before {
  content: "\e402";
}
.icon-low_priority:before {
  content: "\e16d";
}
.icon-loyalty:before {
  content: "\e89a";
}
.icon-mail_outline:before {
  content: "\e0e1";
}
.icon-map2:before {
  content: "\e55b";
}
.icon-markunread_mailbox:before {
  content: "\e89b";
}
.icon-memory:before {
  content: "\e322";
}
.icon-menu:before {
  content: "\e5d2";
}
.icon-message:before {
  content: "\e0c9";
}
.icon-mic:before {
  content: "\e029";
}
.icon-mic_none:before {
  content: "\e02a";
}
.icon-mic_off:before {
  content: "\e02b";
}
.icon-mms:before {
  content: "\e618";
}
.icon-mode_comment:before {
  content: "\e253";
}
.icon-monetization_on:before {
  content: "\e263";
}
.icon-money_off:before {
  content: "\e25c";
}
.icon-monochrome_photos:before {
  content: "\e403";
}
.icon-mood_bad:before {
  content: "\e7f3";
}
.icon-more:before {
  content: "\e619";
}
.icon-more_horiz:before {
  content: "\e5d3";
}
.icon-more_vert:before {
  content: "\e5d4";
}
.icon-motorcycle2:before {
  content: "\e91b";
}
.icon-mouse:before {
  content: "\e323";
}
.icon-move_to_inbox:before {
  content: "\e168";
}
.icon-movie_creation:before {
  content: "\e404";
}
.icon-movie_filter:before {
  content: "\e43a";
}
.icon-multiline_chart:before {
  content: "\e6df";
}
.icon-music_note:before {
  content: "\e405";
}
.icon-music_video:before {
  content: "\e063";
}
.icon-nature:before {
  content: "\e406";
}
.icon-nature_people:before {
  content: "\e407";
}
.icon-navigation:before {
  content: "\e55d";
}
.icon-near_me:before {
  content: "\e569";
}
.icon-network_cell:before {
  content: "\e1b9";
}
.icon-network_check:before {
  content: "\e640";
}
.icon-network_locked:before {
  content: "\e61a";
}
.icon-network_wifi:before {
  content: "\e1ba";
}
.icon-new_releases:before {
  content: "\e031";
}
.icon-next_week:before {
  content: "\e16a";
}
.icon-nfc:before {
  content: "\e1bb";
}
.icon-no_encryption:before {
  content: "\e641";
}
.icon-signal_cellular_no_sim:before {
  content: "\e1ce";
}
.icon-note:before {
  content: "\e06f";
}
.icon-note_add:before {
  content: "\e89c";
}
.icon-notifications:before {
  content: "\e7f4";
}
.icon-notifications_active:before {
  content: "\e7f7";
}
.icon-notifications_none:before {
  content: "\e7f5";
}
.icon-notifications_off:before {
  content: "\e7f6";
}
.icon-notifications_paused:before {
  content: "\e7f8";
}
.icon-offline_pin:before {
  content: "\e90a";
}
.icon-ondemand_video:before {
  content: "\e63a";
}
.icon-opacity:before {
  content: "\e91c";
}
.icon-open_in_browser:before {
  content: "\e89d";
}
.icon-open_with:before {
  content: "\e89f";
}
.icon-pages:before {
  content: "\e7f9";
}
.icon-pageview:before {
  content: "\e8a0";
}
.icon-pan_tool:before {
  content: "\e925";
}
.icon-panorama:before {
  content: "\e40b";
}
.icon-radio_button_unchecked:before {
  content: "\e836";
}
.icon-panorama_horizontal:before {
  content: "\e40d";
}
.icon-panorama_vertical:before {
  content: "\e40e";
}
.icon-panorama_wide_angle:before {
  content: "\e40f";
}
.icon-party_mode:before {
  content: "\e7fa";
}
.icon-pause2:before {
  content: "\e034";
}
.icon-pause_circle_filled:before {
  content: "\e035";
}
.icon-pause_circle_outline:before {
  content: "\e036";
}
.icon-people_outline:before {
  content: "\e7fc";
}
.icon-perm_camera_mic:before {
  content: "\e8a2";
}
.icon-perm_contact_calendar:before {
  content: "\e8a3";
}
.icon-perm_data_setting:before {
  content: "\e8a4";
}
.icon-perm_device_information:before {
  content: "\e8a5";
}
.icon-person_outline:before {
  content: "\e7ff";
}
.icon-perm_media:before {
  content: "\e8a7";
}
.icon-perm_phone_msg:before {
  content: "\e8a8";
}
.icon-perm_scan_wifi:before {
  content: "\e8a9";
}
.icon-person:before {
  content: "\e7fd";
}
.icon-person_add:before {
  content: "\e7fe";
}
.icon-person_pin:before {
  content: "\e55a";
}
.icon-person_pin_circle:before {
  content: "\e56a";
}
.icon-personal_video:before {
  content: "\e63b";
}
.icon-pets:before {
  content: "\e91d";
}
.icon-phone_android:before {
  content: "\e324";
}
.icon-phone_bluetooth_speaker:before {
  content: "\e61b";
}
.icon-phone_forwarded:before {
  content: "\e61c";
}
.icon-phone_in_talk:before {
  content: "\e61d";
}
.icon-phone_iphone:before {
  content: "\e325";
}
.icon-phone_locked:before {
  content: "\e61e";
}
.icon-phone_missed:before {
  content: "\e61f";
}
.icon-phone_paused:before {
  content: "\e620";
}
.icon-phonelink_erase:before {
  content: "\e0db";
}
.icon-phonelink_lock:before {
  content: "\e0dc";
}
.icon-phonelink_off:before {
  content: "\e327";
}
.icon-phonelink_ring:before {
  content: "\e0dd";
}
.icon-phonelink_setup:before {
  content: "\e0de";
}
.icon-photo_album:before {
  content: "\e411";
}
.icon-photo_filter:before {
  content: "\e43b";
}
.icon-photo_size_select_actual:before {
  content: "\e432";
}
.icon-photo_size_select_large:before {
  content: "\e433";
}
.icon-photo_size_select_small:before {
  content: "\e434";
}
.icon-picture_as_pdf:before {
  content: "\e415";
}
.icon-picture_in_picture:before {
  content: "\e8aa";
}
.icon-picture_in_picture_alt:before {
  content: "\e911";
}
.icon-pie_chart:before {
  content: "\e6c4";
}
.icon-pie_chart_outlined:before {
  content: "\e6c5";
}
.icon-pin_drop:before {
  content: "\e55e";
}
.icon-play_arrow:before {
  content: "\e037";
}
.icon-play_circle_filled:before {
  content: "\e038";
}
.icon-play_circle_outline:before {
  content: "\e039";
}
.icon-play_for_work:before {
  content: "\e906";
}
.icon-playlist_add:before {
  content: "\e03b";
}
.icon-playlist_add_check:before {
  content: "\e065";
}
.icon-playlist_play:before {
  content: "\e05f";
}
.icon-plus_one:before {
  content: "\e800";
}
.icon-polymer:before {
  content: "\e8ab";
}
.icon-pool:before {
  content: "\eb48";
}
.icon-portable_wifi_off:before {
  content: "\e0ce";
}
.icon-portrait:before {
  content: "\e416";
}
.icon-power:before {
  content: "\e63c";
}
.icon-power_input:before {
  content: "\e336";
}
.icon-power_settings_new:before {
  content: "\e8ac";
}
.icon-pregnant_woman:before {
  content: "\e91e";
}
.icon-present_to_all:before {
  content: "\e0df";
}
.icon-priority_high:before {
  content: "\e645";
}
.icon-public:before {
  content: "\e80b";
}
.icon-publish:before {
  content: "\e255";
}
.icon-queue_music:before {
  content: "\e03d";
}
.icon-queue_play_next:before {
  content: "\e066";
}
.icon-radio:before {
  content: "\e03e";
}
.icon-radio_button_checked:before {
  content: "\e837";
}
.icon-rate_review:before {
  content: "\e560";
}
.icon-receipt:before {
  content: "\e8b0";
}
.icon-recent_actors:before {
  content: "\e03f";
}
.icon-record_voice_over:before {
  content: "\e91f";
}
.icon-redo:before {
  content: "\e15a";
}
.icon-refresh2:before {
  content: "\e5d5";
}
.icon-remove2:before {
  content: "\e15b";
}
.icon-remove_circle_outline:before {
  content: "\e15d";
}
.icon-remove_from_queue:before {
  content: "\e067";
}
.icon-visibility:before {
  content: "\e8f4";
}
.icon-remove_shopping_cart:before {
  content: "\e928";
}
.icon-reorder2:before {
  content: "\e8fe";
}
.icon-repeat2:before {
  content: "\e040";
}
.icon-repeat_one:before {
  content: "\e041";
}
.icon-replay:before {
  content: "\e042";
}
.icon-replay_10:before {
  content: "\e059";
}
.icon-replay_30:before {
  content: "\e05a";
}
.icon-replay_5:before {
  content: "\e05b";
}
.icon-reply2:before {
  content: "\e15e";
}
.icon-reply_all:before {
  content: "\e15f";
}
.icon-report:before {
  content: "\e160";
}
.icon-warning2:before {
  content: "\e002";
}
.icon-restaurant:before {
  content: "\e56c";
}
.icon-restore_page:before {
  content: "\e929";
}
.icon-ring_volume:before {
  content: "\e0d1";
}
.icon-room_service:before {
  content: "\eb49";
}
.icon-rotate_90_degrees_ccw:before {
  content: "\e418";
}
.icon-rotate_left:before {
  content: "\e419";
}
.icon-rotate_right:before {
  content: "\e41a";
}
.icon-rounded_corner:before {
  content: "\e920";
}
.icon-router:before {
  content: "\e328";
}
.icon-rowing:before {
  content: "\e921";
}
.icon-rss_feed:before {
  content: "\e0e5";
}
.icon-rv_hookup:before {
  content: "\e642";
}
.icon-satellite:before {
  content: "\e562";
}
.icon-save2:before {
  content: "\e161";
}
.icon-scanner:before {
  content: "\e329";
}
.icon-school:before {
  content: "\e80c";
}
.icon-screen_lock_landscape:before {
  content: "\e1be";
}
.icon-screen_lock_portrait:before {
  content: "\e1bf";
}
.icon-screen_lock_rotation:before {
  content: "\e1c0";
}
.icon-screen_rotation:before {
  content: "\e1c1";
}
.icon-screen_share:before {
  content: "\e0e2";
}
.icon-sd_storage:before {
  content: "\e1c2";
}
.icon-search2:before {
  content: "\e8b6";
}
.icon-security:before {
  content: "\e32a";
}
.icon-select_all:before {
  content: "\e162";
}
.icon-send2:before {
  content: "\e163";
}
.icon-sentiment_dissatisfied:before {
  content: "\e811";
}
.icon-sentiment_neutral:before {
  content: "\e812";
}
.icon-sentiment_satisfied:before {
  content: "\e813";
}
.icon-sentiment_very_dissatisfied:before {
  content: "\e814";
}
.icon-sentiment_very_satisfied:before {
  content: "\e815";
}
.icon-settings:before {
  content: "\e8b8";
}
.icon-settings_applications:before {
  content: "\e8b9";
}
.icon-settings_backup_restore:before {
  content: "\e8ba";
}
.icon-settings_bluetooth:before {
  content: "\e8bb";
}
.icon-settings_brightness:before {
  content: "\e8bd";
}
.icon-settings_cell:before {
  content: "\e8bc";
}
.icon-settings_ethernet:before {
  content: "\e8be";
}
.icon-settings_input_antenna:before {
  content: "\e8bf";
}
.icon-settings_input_composite:before {
  content: "\e8c1";
}
.icon-settings_input_hdmi:before {
  content: "\e8c2";
}
.icon-settings_input_svideo:before {
  content: "\e8c3";
}
.icon-settings_overscan:before {
  content: "\e8c4";
}
.icon-settings_phone:before {
  content: "\e8c5";
}
.icon-settings_power:before {
  content: "\e8c6";
}
.icon-settings_remote:before {
  content: "\e8c7";
}
.icon-settings_system_daydream:before {
  content: "\e1c3";
}
.icon-settings_voice:before {
  content: "\e8c8";
}
.icon-share2:before {
  content: "\e80d";
}
.icon-shop:before {
  content: "\e8c9";
}
.icon-shop_two:before {
  content: "\e8ca";
}
.icon-shopping_basket:before {
  content: "\e8cb";
}
.icon-short_text:before {
  content: "\e261";
}
.icon-show_chart:before {
  content: "\e6e1";
}
.icon-shuffle:before {
  content: "\e043";
}
.icon-signal_cellular_4_bar:before {
  content: "\e1c8";
}
.icon-signal_cellular_connected_no_internet_4_bar:before {
  content: "\e1cd";
}
.icon-signal_cellular_null:before {
  content: "\e1cf";
}
.icon-signal_cellular_off:before {
  content: "\e1d0";
}
.icon-signal_wifi_4_bar:before {
  content: "\e1d8";
}
.icon-signal_wifi_4_bar_lock:before {
  content: "\e1d9";
}
.icon-signal_wifi_off:before {
  content: "\e1da";
}
.icon-sim_card:before {
  content: "\e32b";
}
.icon-sim_card_alert:before {
  content: "\e624";
}
.icon-skip_next:before {
  content: "\e044";
}
.icon-skip_previous:before {
  content: "\e045";
}
.icon-slideshow:before {
  content: "\e41b";
}
.icon-slow_motion_video:before {
  content: "\e068";
}
.icon-stay_primary_portrait:before {
  content: "\e0d6";
}
.icon-smoke_free:before {
  content: "\eb4a";
}
.icon-smoking_rooms:before {
  content: "\eb4b";
}
.icon-textsms:before {
  content: "\e0d8";
}
.icon-snooze:before {
  content: "\e046";
}
.icon-sort2:before {
  content: "\e164";
}
.icon-sort_by_alpha:before {
  content: "\e053";
}
.icon-spa:before {
  content: "\eb4c";
}
.icon-space_bar:before {
  content: "\e256";
}
.icon-speaker:before {
  content: "\e32d";
}
.icon-speaker_group:before {
  content: "\e32e";
}
.icon-speaker_notes:before {
  content: "\e8cd";
}
.icon-speaker_notes_off:before {
  content: "\e92a";
}
.icon-speaker_phone:before {
  content: "\e0d2";
}
.icon-spellcheck:before {
  content: "\e8ce";
}
.icon-star_border:before {
  content: "\e83a";
}
.icon-star_half:before {
  content: "\e839";
}
.icon-stars:before {
  content: "\e8d0";
}
.icon-stay_primary_landscape:before {
  content: "\e0d5";
}
.icon-stop2:before {
  content: "\e047";
}
.icon-stop_screen_share:before {
  content: "\e0e3";
}
.icon-storage:before {
  content: "\e1db";
}
.icon-store_mall_directory:before {
  content: "\e563";
}
.icon-straighten:before {
  content: "\e41c";
}
.icon-streetview:before {
  content: "\e56e";
}
.icon-strikethrough_s:before {
  content: "\e257";
}
.icon-style:before {
  content: "\e41d";
}
.icon-subdirectory_arrow_left:before {
  content: "\e5d9";
}
.icon-subdirectory_arrow_right:before {
  content: "\e5da";
}
.icon-subject:before {
  content: "\e8d2";
}
.icon-subscriptions:before {
  content: "\e064";
}
.icon-subtitles:before {
  content: "\e048";
}
.icon-subway2:before {
  content: "\e56f";
}
.icon-supervisor_account:before {
  content: "\e8d3";
}
.icon-surround_sound:before {
  content: "\e049";
}
.icon-swap_calls:before {
  content: "\e0d7";
}
.icon-swap_horiz:before {
  content: "\e8d4";
}
.icon-swap_vert:before {
  content: "\e8d5";
}
.icon-swap_vertical_circle:before {
  content: "\e8d6";
}
.icon-switch_camera:before {
  content: "\e41e";
}
.icon-switch_video:before {
  content: "\e41f";
}
.icon-sync_disabled:before {
  content: "\e628";
}
.icon-sync_problem:before {
  content: "\e629";
}
.icon-system_update:before {
  content: "\e62a";
}
.icon-system_update_alt:before {
  content: "\e8d7";
}
.icon-tab:before {
  content: "\e8d8";
}
.icon-tab_unselected:before {
  content: "\e8d9";
}
.icon-tablet2:before {
  content: "\e32f";
}
.icon-tablet_android:before {
  content: "\e330";
}
.icon-tablet_mac:before {
  content: "\e331";
}
.icon-tap_and_play:before {
  content: "\e62b";
}
.icon-text_fields:before {
  content: "\e262";
}
.icon-text_format:before {
  content: "\e165";
}
.icon-texture:before {
  content: "\e421";
}
.icon-thumb_down:before {
  content: "\e8db";
}
.icon-thumb_up:before {
  content: "\e8dc";
}
.icon-thumbs_up_down:before {
  content: "\e8dd";
}
.icon-timelapse:before {
  content: "\e422";
}
.icon-timeline:before {
  content: "\e922";
}
.icon-timer:before {
  content: "\e425";
}
.icon-timer_10:before {
  content: "\e423";
}
.icon-timer_3:before {
  content: "\e424";
}
.icon-timer_off:before {
  content: "\e426";
}
.icon-title:before {
  content: "\e264";
}
.icon-toc:before {
  content: "\e8de";
}
.icon-today:before {
  content: "\e8df";
}
.icon-toll:before {
  content: "\e8e0";
}
.icon-tonality:before {
  content: "\e427";
}
.icon-touch_app:before {
  content: "\e913";
}
.icon-toys:before {
  content: "\e332";
}
.icon-track_changes:before {
  content: "\e8e1";
}
.icon-traffic:before {
  content: "\e565";
}
.icon-train2:before {
  content: "\e570";
}
.icon-tram:before {
  content: "\e571";
}
.icon-transfer_within_a_station:before {
  content: "\e572";
}
.icon-transform:before {
  content: "\e428";
}
.icon-translate:before {
  content: "\e8e2";
}
.icon-trending_down:before {
  content: "\e8e3";
}
.icon-trending_flat:before {
  content: "\e8e4";
}
.icon-trending_up:before {
  content: "\e8e5";
}
.icon-tune:before {
  content: "\e429";
}
.icon-tv2:before {
  content: "\e333";
}
.icon-unarchive:before {
  content: "\e169";
}
.icon-undo2:before {
  content: "\e166";
}
.icon-unfold_less:before {
  content: "\e5d6";
}
.icon-unfold_more:before {
  content: "\e5d7";
}
.icon-update:before {
  content: "\e923";
}
.icon-usb2:before {
  content: "\e1e0";
}
.icon-verified_user:before {
  content: "\e8e8";
}
.icon-vertical_align_bottom:before {
  content: "\e258";
}
.icon-vertical_align_center:before {
  content: "\e259";
}
.icon-vertical_align_top:before {
  content: "\e25a";
}
.icon-vibration:before {
  content: "\e62d";
}
.icon-video_call:before {
  content: "\e070";
}
.icon-video_label:before {
  content: "\e071";
}
.icon-video_library:before {
  content: "\e04a";
}
.icon-videocam:before {
  content: "\e04b";
}
.icon-videocam_off:before {
  content: "\e04c";
}
.icon-videogame_asset:before {
  content: "\e338";
}
.icon-view_agenda:before {
  content: "\e8e9";
}
.icon-view_array:before {
  content: "\e8ea";
}
.icon-view_carousel:before {
  content: "\e8eb";
}
.icon-view_column:before {
  content: "\e8ec";
}
.icon-view_comfy:before {
  content: "\e42a";
}
.icon-view_compact:before {
  content: "\e42b";
}
.icon-view_day:before {
  content: "\e8ed";
}
.icon-view_headline:before {
  content: "\e8ee";
}
.icon-view_list:before {
  content: "\e8ef";
}
.icon-view_module:before {
  content: "\e8f0";
}
.icon-view_quilt:before {
  content: "\e8f1";
}
.icon-view_stream:before {
  content: "\e8f2";
}
.icon-view_week:before {
  content: "\e8f3";
}
.icon-vignette:before {
  content: "\e435";
}
.icon-visibility_off:before {
  content: "\e8f5";
}
.icon-voice_chat:before {
  content: "\e62e";
}
.icon-voicemail:before {
  content: "\e0d9";
}
.icon-volume_down:before {
  content: "\e04d";
}
.icon-volume_mute:before {
  content: "\e04e";
}
.icon-volume_off:before {
  content: "\e04f";
}
.icon-volume_up:before {
  content: "\e050";
}
.icon-vpn_key:before {
  content: "\e0da";
}
.icon-vpn_lock:before {
  content: "\e62f";
}
.icon-wallpaper:before {
  content: "\e1bc";
}
.icon-watch:before {
  content: "\e334";
}
.icon-watch_later:before {
  content: "\e924";
}
.icon-wb_auto:before {
  content: "\e42c";
}
.icon-wb_incandescent:before {
  content: "\e42e";
}
.icon-wb_iridescent:before {
  content: "\e436";
}
.icon-wb_sunny:before {
  content: "\e430";
}
.icon-wc:before {
  content: "\e63d";
}
.icon-web:before {
  content: "\e051";
}
.icon-web_asset:before {
  content: "\e069";
}
.icon-weekend:before {
  content: "\e16b";
}
.icon-whatshot:before {
  content: "\e80e";
}
.icon-widgets:before {
  content: "\e1bd";
}
.icon-wifi2:before {
  content: "\e63e";
}
.icon-wifi_lock:before {
  content: "\e1e1";
}
.icon-wifi_tethering:before {
  content: "\e1e2";
}
.icon-work:before {
  content: "\e8f9";
}
.icon-wrap_text:before {
  content: "\e25b";
}
.icon-youtube_searched_for:before {
  content: "\e8fa";
}
.icon-zoom_in:before {
  content: "\e8ff";
}
.icon-zoom_out:before {
  content: "\e901";
}
.icon-zoom_out_map:before {
  content: "\e56b";
}
	
	body {
  font-family: "Roboto", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
  background-color: #3c373e;
  font-weight: 300; }

p {
  color: rgba(255, 255, 255, 0.5);
  font-weight: 300; }

h1, h2, h3, h4, h5, h6,
.h1, .h2, .h3, .h4, .h5, .h6 {
  font-family: "Roboto", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"; }

a {
  -webkit-transition: .3s all ease;
  -o-transition: .3s all ease;
  transition: .3s all ease; }
  a, a:hover {
    text-decoration: none !important; }

.content {
  padding: 7rem 0; }

h2 {
  font-size: 20px;
  color: #fff; }

.custom-table {
  min-width: 900px; }
  .custom-table thead tr, .custom-table thead th {
    padding-bottom: 30px;
    border-top: none;
    border-bottom: none !important;
    color: #fff;
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: .2rem; }
  .custom-table tbody th, .custom-table tbody td {
    color: #777;
    font-weight: 400;
    padding-bottom: 20px;
    padding-top: 20px;
    font-weight: 300;
    border: none;
    -webkit-transition: .3s all ease;
    -o-transition: .3s all ease;
    transition: .3s all ease; }
    .custom-table tbody th small, .custom-table tbody td small {
      color: rgba(255, 255, 255, 0.3);
      font-weight: 300; }
    .custom-table tbody th a, .custom-table tbody td a {
      color: rgba(255, 255, 255, 0.3); }
    .custom-table tbody th .more, .custom-table tbody td .more {
      color: rgba(255, 255, 255, 0.3);
      font-size: 11px;
      font-weight: 900;
      text-transform: uppercase;
      letter-spacing: .2rem; }
  .custom-table tbody tr {
    -webkit-transition: .3s all ease;
    -o-transition: .3s all ease;
    transition: .3s all ease; }
    .custom-table tbody tr:hover td, .custom-table tbody tr:focus td {
      color: #fff; }
      .custom-table tbody tr:hover td a, .custom-table tbody tr:focus td a {
        color: #fdd114; }
      .custom-table tbody tr:hover td .more, .custom-table tbody tr:focus td .more {
        color: #fdd114; }
  .custom-table .td-box-wrap {
    padding: 0; }
  .custom-table .box {
    background: #fff;
    border-radius: 4px;
    margin-top: 15px;
    margin-bottom: 15px; }
    .custom-table .box td, .custom-table .box th {
      border: none !important; }
	
	</style> 
	
    <title>Eleves</title>
  </head>
  <body>
  
  <center>
  

  <div class="content">
    
    <div class="container">
      <h2 class="mb-5">Eleves</h2>
      

      <div class="table-responsive">

        <table class="table table-striped custom-table">
          <thead>
            <tr>
              
              <th scope="col">ID</th>
              <th scope="col">Name</th>
              <th scope="col">Prenom</th>
             <th scope="col"><a href="add" class="add"> ADD</a></th> 
            </tr>
          </thead>
          <tbody>
          
<% List<Eleve> list = (List) request.getAttribute("eleves");%> 
 
			<% 
				for (Eleve u : list) { 
			%> 
			            <tr >
                      <td><%=u.getId()%>
                      <small class="d-block"></small></td>
                      <td><%=u.getName()%></td>
                      <td><%=u.getPrenom()%>
                        <small class="d-block"></small>
                      </td>
                      <td><a href="edit/<%=u.getId()%>" class="more">Edit</a></td>
                      <td><a href="delete/<%=u.getId()%>" class="more" onclick="return confirm('Etes-vous s�r de la suppression?');">delete</a></td>
            
            </tr>
<% 
				} 
			%>
            
          </tbody>
        </table>
      </div>


    </div>

  </div>
    
    </center>
  
  
  
  

  </body>
</html>