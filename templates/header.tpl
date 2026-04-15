<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" {{{if languageDirection}}}data-dir="{languageDirection}" style="direction: {languageDirection};"{{{end}}}>
<head>
<title>{browserTitle}</title>
{{{each metaTags}}}{function.buildMetaTag}{{{end}}}
<link rel="stylesheet" type="text/css" href="{relative_path}/assets/client{{{if bootswatchSkin}}}-{bootswatchSkin}{{{end}}}{{{ if (languageDirection=="rtl") }}}-rtl{{{ end }}}.css?{config.cache-buster}" />
{{{each linkTags}}}{function.buildLinkTag}{{{end}}}
<script>
var config = JSON.parse('{{configJSON}}');
var app = {
user: JSON.parse('{{userJSON}}')
};
document.documentElement.style.setProperty('--panel-offset', `${localStorage.getItem('panelOffset') || 0}px`);
</script>
{{{if useCustomHTML}}}
{{customHTML}}
{{{end}}}
{{{if useCustomCSS}}}
<style>{{customCSS}}</style>
{{{end}}}
</head>
<body class="{bodyClass} skin-{{{if bootswatchSkin}}}{bootswatchSkin}{{{else}}}noskin{{{end}}}">
<nav id="menu" class="slideout-menu hidden">
<section class="menu-section" data-section="navigation">
<ul class="menu-section-list text-bg-dark list-unstyled"></ul>
</section>
</nav>
<nav id="chats-menu" class="slideout-menu hidden">
{{{ if config.loggedIn }}}
<ul class="nav nav-pills">
<li class="nav-item">
<a class="nav-link text-decoration-none" href="#" data-bs-target="#notifications" data-bs-toggle="tab"><span class="counter unread-count" component="notifications/icon" data-content="{unreadCount.notification}"></span> <i class="fa fa-fw fa-bell"></i></a>
</li>
{{{ if !config.disableChat }}}
<li class="nav-item">
<a class="nav-link text-decoration-none" href="#" data-bs-target="#chats" data-bs-toggle="tab"><i class="counter unread-count" component="chat/icon" data-content="{unreadCount.chat}"></i> <i class="fa fa-fw fa-comment"></i></a>
</li>
{{{ end }}}
<li class="nav-item">
<a class="nav-link active text-decoration-none" href="#" data-bs-target="#profile" data-bs-toggle="tab">
{buildAvatar(user, "24px", true, "user-icon")}
</a>
</li>
</ul>
<div class="tab-content">
<div class="tab-pane fade show active" id="profile">
<section class="menu-section" data-section="profile">
<ul class="menu-section-list dropdown-menu show text-bg-dark w-100 border-0" component="header/usercontrol"></ul>
</section>
</div>
<div class="tab-pane fade" id="notifications">
<section class="menu-section text-bg-dark px-1" data-section="notifications">
<ul class="menu-section-list notification-list-mobile list-unstyled" component="notifications/list"></ul>
<div class="menu-section-list text-center p-3"><a href="{relative_path}/notifications">[[notifications:see-all]]</a></div>
</section>
</div>
{{{ if !config.disableChat }}}
<div class="tab-pane fade" id="chats">
<section class="menu-section text-bg-dark px-1" data-section="chats">
<ul class="menu-section-list chat-list list-unstyled" component="chat/list">
</ul>
<div class="menu-section-list text-center p-3"><a class="navigation-link" href="{relative_path}/user/{user.userslug}/chats">[[modules:chat.see-all]]</a></div>
</section>
</div>
{{{ end }}}
</div>
{{{ end }}}
</nav>
<main id="panel" class="slideout-panel">
<nav class="navbar sticky-top navbar-expand-lg bg-light header border-bottom py-0" id="header-menu" component="navbar">
<div class="container-lg justify-content-start flex-nowrap">
<div class="d-flex align-items-center me-auto" style="min-width: 0px;">
<button type="button" class="navbar-toggler border-0" id="mobile-menu">
<i class="fa fa-lg fa-fw fa-bars unread-count" ></i>
<span component="unread/icon" class="notification-icon fa fa-fw fa-book unread-count" data-content="{unreadCount.mobileUnread}" data-unread-url="{unreadCount.unreadUrl}"></span>
</button>
<div class="d-inline-flex align-items-center" style="min-width: 0px;">
<a href="https://green-api.com/" class="main-page-link">
    <div style="display: flex; align-items: center;">
    <svg
      xmlns="http://www.w3.org/2000/svg"
      xmlSpace="preserve"
      class="full-logo"
      viewBox="0 0 2420.309 729.74"
      xmlnsXlink="http://www.w3.org/1999/xlink"
    >
      <defs>
        <style type="text/css" />
      </defs>
      <g id="\u0421\u043B\u043E\u0439_x0020_1">
        <metadata id="CorelCorpID_0Corel-Layer" />
        <g id="_1475675627648">
          <path
            class="fil0"
            d="M1866.085 435.842l89.653 -226.56 46.93 0 88.997 226.56 -55.669 0 -16.24 -43.366 -83.079 0 -16.219 43.366 -54.373 0zm137.906 -85.448l-11.029 -29.45c-1.521,-4.534 -3.18,-9.379 -5.028,-14.566 -3.458,-9.775 -6.476,-19.728 -9.4,-29.675 -7.294,24.717 -17.097,49.565 -26.12,73.691l51.577 0z"
          />
          <path
            class="fil0"
            d="M819.331 439.077c-18.127,0 -34.465,-2.912 -49.031,-8.736 -45.808,-18.323 -70.397,-59.85 -70.397,-108.418 0,-49.04 27.397,-90.595 73.309,-108.433 25.772,-10.01 57.837,-11.645 84.478,-3.878 19.75,5.757 39.786,16.514 53.237,32.361l-33.981 35.609c-15.844,-14.966 -33.261,-23.629 -55.343,-23.629 -38.643,0 -65.055,30.2 -65.055,67.97 0,38.188 29.367,67.964 67.641,67.964 21.875,0 46.122,-13.474 47.802,-37.225l-54.596 0.006 0 -43.704 106.472 0c0.439,2.372 0.757,5.614 0.973,9.718 1.165,21.39 1.628,40.475 -7.278,61.008 -17.076,39.399 -56.514,59.387 -98.231,59.387z"
          />
          <path
            class="fil0"
            d="M1529.684 435.842l0 -226.56 49.516 0 106.5 144.408c-1.964,-16.902 -3.574,-33.749 -4.065,-50.873 -0.884,-31.096 -0.485,-62.411 -0.485,-93.532l53.724 0 0 226.557 -50.168 0 -105.271 -141.651 -0.003 0c2.342,22.549 4.299,44.518 4.299,67.216l0 74.435 -54.047 0z"
          />
          <polygon
            class="fil1"
            points="2288.577,435.842 2288.577,389.238 2326.768,389.238 2326.768,255.886 2288.577,255.886 2288.577,209.282 2420.309,209.282 2420.309,255.886 2382.118,255.886 2382.118,389.238 2420.309,389.238 2420.309,435.842 "
          />
          <path
            class="fil1"
            d="M2099.175 435.842l0 -226.56 98.063 0c14.246,0 26.979,3.242 38.201,9.709 11.214,6.477 20.063,15.271 26.531,26.379 6.476,11.111 9.714,23.79 9.714,38.036 0,14.447 -3.238,27.507 -9.714,39.158 -6.468,11.648 -15.317,20.823 -26.531,27.503 -11.222,6.69 -23.955,10.044 -38.201,10.044l-42.707 0 0 75.731 -55.356 0zm54.7 -124.606l35.92 0c4.757,0 9.004,-1.135 12.785,-3.394 3.778,-2.272 6.861,-5.455 9.221,-9.559 2.385,-4.092 3.568,-8.739 3.568,-13.911 0,-5.397 -1.183,-10.032 -3.568,-13.91 -2.36,-3.891 -5.443,-6.916 -9.221,-9.066 -3.781,-2.155 -8.028,-3.238 -12.785,-3.238l-35.92 0 0 53.078z"
          />
          <polygon
            class="fil1"
            points="1759.21,366.579 1759.21,319.011 1870.549,319.011 1870.549,366.579 "
          />
          <polygon
            class="fil1"
            points="1341.578,435.842 1341.578,209.282 1499.524,209.282 1499.524,256.539 1395.626,256.539 1395.626,297.966 1485.275,297.966 1485.275,343.277 1395.626,343.277 1395.626,388.585 1503.077,388.585 1503.077,435.842 "
          />
          <polygon
            class="fil1"
            points="1153.476,435.842 1153.476,209.282 1311.416,209.282 1311.416,256.539 1207.52,256.539 1207.52,297.966 1297.17,297.966 1297.17,343.277 1207.52,343.277 1207.52,388.585 1314.974,388.585 1314.974,435.842 "
          />
          <path
            class="fil1"
            d="M946.273 435.842l0 -226.56 102.594 0c14.672,0 27.833,3.129 39.481,9.395 11.654,6.251 20.884,14.834 27.677,25.729 6.794,10.898 10.203,23.354 10.203,37.38 0,14.234 -3.409,26.968 -10.203,38.192 -6.793,11.221 -16.029,20.115 -27.677,26.696 -1.189,0.673 -2.397,1.311 -3.62,1.915l50.553 87.576 -63.112 -0.323 -44.528 -79.295 -28.617 0 0 79.295 -52.751 0zm52.754 -122.344l44.982 0c5.614,0 10.526,-1.238 14.731,-3.723 4.208,-2.476 7.446,-5.882 9.703,-10.187 2.274,-4.318 3.396,-9.276 3.396,-14.89 0,-5.824 -1.338,-10.897 -4.034,-15.215 -2.701,-4.318 -6.479,-7.712 -11.337,-10.2 -4.848,-2.473 -10.626,-3.711 -17.31,-3.711l-40.134 0 0 57.926 0.003 0z"
          />
          <g>
            <path
              class="fil2"
              d="M402.825 372.256l-89.412 -0.012 0 -71.543 174.363 0c0.707,3.89 1.238,9.187 1.588,15.901 0.345,6.712 0.616,13.167 0.796,19.345 0.171,6.186 0.259,11.044 0.259,14.572 0,24.034 -4.329,46.018 -12.977,65.975 -8.657,19.976 -20.851,37.192 -36.572,51.688 -15.722,14.471 -34.188,25.698 -55.383,33.648 -21.198,7.952 -44.162,11.919 -68.894,11.919 -29.678,0 -56.438,-4.769 -80.292,-14.304 -23.854,-9.538 -44.433,-22.964 -61.74,-40.283 -17.319,-17.307 -30.562,-37.627 -39.756,-60.948 -9.187,-23.314 -13.776,-48.75 -13.776,-76.312 0,-27.553 4.952,-52.992 14.835,-76.313 9.897,-23.326 23.762,-43.637 41.609,-60.95 17.835,-17.311 39.036,-30.739 63.597,-40.271 24.559,-9.538 51.492,-14.319 80.82,-14.319 20.14,0 39.304,2.653 57.499,7.949 18.197,5.309 34.806,12.551 49.821,21.729 15.011,9.187 27.47,19.615 37.355,31.275l-55.642 58.295c-12.721,-12.011 -26.403,-21.466 -41.069,-28.348 -14.664,-6.895 -31.185,-10.334 -49.547,-10.334 -15.206,0 -29.239,2.732 -42.14,8.208 -12.898,5.477 -24.198,13.249 -33.916,23.321 -9.718,10.065 -17.231,21.908 -22.528,35.508 -5.309,13.605 -7.946,28.36 -7.946,44.25 0,15.901 2.82,30.562 8.474,43.991 5.659,13.425 13.517,25.18 23.582,35.246 10.078,10.065 21.82,17.923 35.246,23.582 13.429,5.656 27.913,8.48 43.463,8.48 10.953,0 21.107,-1.677 30.465,-5.04 9.367,-3.351 17.667,-7.95 24.921,-13.777 7.23,-5.827 12.889,-12.718 16.945,-20.67 3.442,-6.709 5.424,-13.865 5.952,-21.458z"
            />
            <path
              id="rect915"
              class="fil1"
              d="M59.99 0.024c-15.036,0.314 -29.867,6.468 -40.765,16.969 -11.337,10.764 -18.332,26.013 -19.106,41.713 -0.226,6.87 -0.046,13.752 -0.101,20.625 0,195.762 -0.012,391.519 0,587.281 0.223,15.115 5.556,30.016 14.496,42.094 6.904,9.254 16.408,17.024 27.687,19.881 7.163,1.878 14.822,1.396 21.805,-1.012 162.69,-49.794 325.393,-99.569 488.071,-149.387 13.71,-4.33 27.239,-10.108 38.539,-19.229 8.648,-6.973 15.643,-16.352 18.713,-27.192 1.833,-6.117 2.238,-12.551 2.092,-18.915 -0.012,-150.524 0.012,-301.036 -0.012,-451.56 -0.146,-15.417 -6.251,-30.687 -16.777,-41.844 -10.639,-11.459 -25.72,-18.545 -41.237,-19.329 -6.794,-0.226 -13.597,-0.046 -20.39,-0.104 -157.416,0 -314.834,-0.009 -472.25,0.012 -0.259,0 -0.506,0 -0.765,0l0 -0.003zm342.835 372.232l-89.412 -0.012 0 -71.543 174.363 0c0.707,3.89 1.238,9.187 1.585,15.901 0.351,6.712 0.619,13.17 0.799,19.345 0.168,6.183 0.259,11.041 0.259,14.572 0,24.03 -4.329,46.018 -12.977,65.978 -8.66,19.973 -20.851,37.189 -36.572,51.685 -15.722,14.474 -34.188,25.695 -55.386,33.648 -21.195,7.949 -44.162,11.919 -68.891,11.919 -29.678,0 -56.441,-4.766 -80.292,-14.304 -23.854,-9.535 -44.433,-22.964 -61.74,-40.283 -17.319,-17.307 -30.565,-37.627 -39.752,-60.951 -9.188,-23.311 -13.777,-48.747 -13.777,-76.312 0,-27.55 4.946,-52.989 14.832,-76.313 9.897,-23.323 23.762,-43.631 41.609,-60.95 17.835,-17.308 39.036,-30.733 63.594,-40.271 24.562,-9.535 51.495,-14.316 80.823,-14.316 20.143,0 39.304,2.656 57.502,7.952 18.194,5.306 34.803,12.551 49.818,21.726 15.011,9.187 27.473,19.612 37.355,31.275l-55.642 58.298c-12.721,-12.011 -26.406,-21.469 -41.069,-28.351 -14.664,-6.895 -31.185,-10.334 -49.55,-10.334 -15.203,0 -29.239,2.732 -42.137,8.208 -12.898,5.477 -24.202,13.249 -33.916,23.324 -9.718,10.065 -17.228,21.905 -22.525,35.502 -5.308,13.608 -7.952,28.36 -7.952,44.253 0,15.901 2.823,30.565 8.48,43.991 5.656,13.428 13.517,25.18 23.582,35.246 10.075,10.062 21.814,17.923 35.243,23.582 13.429,5.656 27.913,8.477 43.463,8.477 10.953,0 21.11,-1.674 30.465,-5.037 9.367,-3.351 17.667,-7.953 24.921,-13.777 7.23,-5.824 12.886,-12.718 16.948,-20.667 3.439,-6.715 5.418,-13.868 5.949,-21.457l0 -0.004z"
            />
          </g>
        </g>
      </g>
    </svg>
    <svg
      xmlns="http://www.w3.org/2000/svg"
      xmlSpace="preserve"
      class="text-logo"
      version="1.1"
      viewBox="0 0 235.369 32.058"
    >
      <path
        fill="currentColor"
        d="M16.339 32.058c-2.48,0 -4.716,-0.398 -6.708,-1.195 -1.993,-0.797 -3.712,-1.919 -5.159,-3.365 -1.446,-1.447 -2.553,-3.144 -3.321,-5.093 -0.767,-1.948 -1.151,-4.073 -1.151,-6.376 0,-2.302 0.413,-4.428 1.24,-6.376 0.827,-1.948 1.985,-3.646 3.476,-5.092 1.491,-1.446 3.262,-2.568 5.313,-3.365 2.052,-0.797 4.303,-1.196 6.753,-1.196 1.682,0 3.284,0.222 4.804,0.664 1.52,0.443 2.908,1.048 4.162,1.816 1.255,0.767 2.296,1.638 3.122,2.612l-4.649 4.871c-1.063,-1.004 -2.207,-1.793 -3.432,-2.369 -1.225,-0.576 -2.605,-0.864 -4.14,-0.864 -1.269,0 -2.443,0.229 -3.52,0.687 -1.078,0.457 -2.022,1.107 -2.834,1.948 -0.812,0.842 -1.439,1.83 -1.882,2.967 -0.443,1.136 -0.664,2.369 -0.664,3.697 0,1.329 0.236,2.554 0.708,3.675 0.473,1.122 1.13,2.104 1.971,2.945 0.841,0.841 1.823,1.498 2.944,1.97 1.122,0.473 2.332,0.709 3.631,0.709 0.915,0 1.764,-0.14 2.546,-0.421 0.783,-0.28 1.476,-0.664 2.081,-1.151 0.605,-0.487 1.078,-1.063 1.418,-1.727 0.339,-0.664 0.509,-1.38 0.509,-2.148l0 -1.151 0.974 1.506 -8.458 0 0 -5.978 14.568 0c0.059,0.325 0.104,0.767 0.133,1.328 0.03,0.561 0.052,1.1 0.067,1.616 0.014,0.517 0.022,0.923 0.022,1.218 0,2.008 -0.362,3.845 -1.085,5.513 -0.723,1.668 -1.742,3.107 -3.056,4.317 -1.313,1.21 -2.856,2.148 -4.627,2.812 -1.771,0.664 -3.69,0.996 -5.756,0.996zm17.366 -0.443l0 -30.995 14.037 0c2.007,0 3.808,0.428 5.402,1.284 1.594,0.856 2.856,2.029 3.785,3.52 0.93,1.491 1.395,3.196 1.395,5.114 0,1.949 -0.465,3.691 -1.395,5.226 -0.929,1.534 -2.191,2.752 -3.785,3.652 -1.594,0.901 -3.395,1.351 -5.402,1.351l-6.82 0 0 10.848 -7.217 0zm17.225 0l-7.882 -14.036 7.749 -1.107 8.767 15.188 -8.634 -0.045zm-10.008 -16.737l6.155 0c0.768,0 1.44,-0.17 2.015,-0.509 0.576,-0.34 1.019,-0.805 1.328,-1.395 0.31,-0.59 0.465,-1.27 0.465,-2.037 0,-0.797 -0.184,-1.491 -0.553,-2.081 -0.369,-0.591 -0.886,-1.055 -1.55,-1.395 -0.664,-0.339 -1.454,-0.509 -2.369,-0.509l-5.491 0 0 7.926zm21.131 16.737l0 -30.995 21.607 0 0 6.465 -14.213 0 0 18.066 14.7 0 0 6.464 -22.094 0zm3.586 -12.663l0 -6.2 16.073 0 0 6.2 -16.073 0zm22.148 12.663l0 -30.995 21.608 0 0 6.465 -14.213 0 0 18.066 14.7 0 0 6.464 -22.095 0zm3.587 -12.663l0 -6.2 16.073 0 0 6.2 -16.073 0zm22.148 12.663l0 -30.995 6.775 0 16.295 22.095 -1.462 -0.177c-0.206,-1.653 -0.383,-3.195 -0.531,-4.627 -0.148,-1.432 -0.243,-2.93 -0.288,-4.494 -0.044,-1.565 -0.066,-3.366 -0.066,-5.402l0 -7.395 7.35 0 0 30.995 -6.863 0 -16.915 -22.759 2.17 0.31c0.206,1.801 0.369,3.291 0.487,4.472 0.118,1.181 0.207,2.192 0.266,3.033 0.059,0.842 0.103,1.624 0.132,2.347 0.03,0.723 0.045,1.528 0.045,2.413l0 10.184 -7.395 0zm31.403 -9.475l0 -6.509 15.232 0 0 6.509 -15.232 0zm14.621 9.475l12.265 -30.995 6.42 0 12.177 30.995 -7.616 0 -5.889 -15.719c-0.207,-0.619 -0.436,-1.284 -0.686,-1.992 -0.251,-0.709 -0.495,-1.447 -0.731,-2.214 -0.236,-0.768 -0.457,-1.506 -0.664,-2.214 -0.207,-0.709 -0.384,-1.373 -0.532,-1.993l1.285 -0.044c-0.178,0.738 -0.37,1.461 -0.576,2.17 -0.207,0.708 -0.428,1.417 -0.664,2.125 -0.236,0.709 -0.48,1.41 -0.731,2.103 -0.251,0.694 -0.509,1.41 -0.775,2.148l-5.845 15.63 -7.438 0zm5.844 -5.933l2.392 -5.756 14.169 0 2.391 5.756 -18.952 0zm26.045 5.933l0 -30.995 13.417 0c1.948,0 3.69,0.443 5.225,1.329 1.535,0.885 2.745,2.088 3.631,3.608 0.885,1.52 1.328,3.255 1.328,5.203 0,1.978 -0.443,3.764 -1.328,5.358 -0.886,1.594 -2.096,2.848 -3.631,3.763 -1.535,0.916 -3.277,1.373 -5.225,1.373l-5.845 0 0 10.361 -7.572 0zm7.483 -17.047l4.915 0c0.65,0 1.233,-0.155 1.749,-0.465 0.517,-0.31 0.938,-0.745 1.263,-1.306 0.324,-0.561 0.487,-1.196 0.487,-1.904 0,-0.738 -0.163,-1.373 -0.487,-1.904 -0.325,-0.532 -0.746,-0.945 -1.263,-1.24 -0.516,-0.295 -1.099,-0.443 -1.749,-0.443l-4.915 0 0 7.262zm18.429 17.047l0 -6.376 5.225 0 0 -18.243 -5.225 0 0 -6.376 18.022 0 0 6.376 -5.225 0 0 18.243 5.225 0 0 6.376 -18.022 0z"
      />
    </svg>
    </div>
</a>
<!--{{{ if brand:logo }}}-->
<!--<a class="navbar-brand" href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}">-->
<!--<img alt="{brand:logo:alt}" class="{brand:logo:display} forum-logo d-inline-block align-text-bottom" src="{brand:logo}?{config.cache-buster}" />-->
<!--</a>-->
<!--{{{ end }}}-->
<!--{{{ if config.showSiteTitle }}}-->
<!--<a class="navbar-brand text-truncate" href="{{{ if title:url }}}{title:url}{{{ else }}}{relative_path}/{{{ end }}}">-->
<!--{config.siteTitle}-->
<!--</a>-->
<!--{{{ end }}}-->
</div>
</div>
{{{ if (config.searchEnabled && user.privileges.search:content) }}}
<div class="navbar-search visible-xs">
<form action="{config.relative_path}/search" method="GET">
<button type="button" class="btn btn-link"><i class="fa fa-lg fa-fw fa-search" title="[[global:header.search]]"></i></button>
<input autocomplete="off" type="text" class="form-control hidden" name="term" placeholder="[[global:search]]"/>
<button class="btn btn-primary hidden" type="submit"></button>
<input type="text" class="hidden" name="in" value="{config.searchDefaultInQuick}" />
</form>
<div class="quick-search-container dropdown-menu d-block mt-2 hidden">
<div class="quick-search-results-container"></div>
</div>
</div>
{{{ end }}}
{{{ if config.loggedIn }}}
<button type="button" class="navbar-toggler border-0" id="mobile-chats">
<span component="notifications/icon" class="notification-icon fa fa-fw fa-bell-o unread-count" data-content="{unreadCount.notification}"></span>
<span component="chat/icon" class="notification-icon fa fa-fw fa-comments unread-count" data-content="{unreadCount.chat}"></span>
{buildAvatar(user, "32px", true)}
</button>
{{{ end }}}
<div component="navbar/title" class="visible-xs hidden">
<span></span>
</div>
<div id="nav-dropdown" class="collapse navbar-collapse d-none d-lg-block">
<ul id="main-nav" class="navbar-nav me-auto mb-2 mb-lg-0">
{{{each navigation}}}
<!-- IF function.displayMenuItem, @index -->
<li class="nav-item {navigation.class}{{{ if navigation.dropdown }}} dropdown{{{ end }}}" title="{navigation.title}">
<a class="nav-link navigation-link {{{ if navigation.dropdown }}}dropdown-toggle{{{ end }}}"
{{{ if navigation.dropdown }}} href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" {{{ else }}} href="{navigation.route}"{{{ end }}} {{{ if navigation.id }}}id="{navigation.id}"{{{ end }}}{{{ if navigation.targetBlank }}} target="_blank"{{{ end }}}>
{{{ if navigation.iconClass }}}
<i class="fa fa-fw {navigation.iconClass}" data-content="{navigation.content}"></i>
{{{ end }}}
{{{ if navigation.text }}}
<span class="{navigation.textClass}">{navigation.text}</span>
{{{ end }}}
{{{ if navigation.dropdown}}}
<i class="fa fa-caret-down"></i>
{{{ end }}}
</a>
{{{ if navigation.dropdown }}}
<ul class="dropdown-menu p-1" role="menu">
{navigation.dropdownContent}
</ul>
{{{ end }}}
</li>
<!-- ENDIF function.displayMenuItem -->
{{{end}}}
</ul>
<ul class="navbar-nav mb-2 mb-lg-0 hidden-xs">
<li class="nav-item">
<a href="#" id="reconnect" class="nav-link hide" title="[[global:reconnecting-message, {config.siteTitle}]]">
<i class="fa fa-check"></i>
</a>
</li>
</ul>
{{{ if (config.searchEnabled && user.privileges.search:content) }}}
<div class="navbar-nav mb-2 mb-lg-0 position-relative">
<form component="search/form" id="search-form" class="d-flex justify-content-end align-items-center" role="search" method="GET">
<div component="search/fields" class="hidden" id="search-fields">
<div class="input-group flex-nowrap">
<input autocomplete="off" type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">
<a href="{config.relative_path}/search" class="btn btn-outline-secondary" aria-label="[[search:type-to-search]]">
<i class="fa fa-gears fa-fw"></i>
</a>
</div>
<div id="quick-search-container" class="quick-search-container dropdown-menu d-block mt-2 hidden">
<div class="form-check filter-category mb-2 ms-4">
<input class="form-check-input" type="checkbox" checked>
<label class="form-check-label name"></label>
</div>
<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
<div class="quick-search-results-container"></div>
</div>
<button type="submit" class="btn btn-outline-secondary hide">[[global:search]]</button>
</div>
<div class="nav-item" title="[[global:search]]"><a component="search/button" id="search-button" href="#" class="nav-link" aria-label="[[global:search]]"><i class="fa fa-search fa-fw"></i></a></div>
</form>
</div>
{{{ end }}}
{{{ if !maintenanceHeader }}}
{{{ if config.loggedIn }}}
<ul id="logged-in-menu" class="navbar-nav me-0 mb-2 mb-lg-0 align-items-center">
<li class="nav-item notifications dropdown d-none d-sm-block" component="notifications" title="[[global:header.notifications]]">
<a data-bs-toggle="dropdown" href="#" role="button" class="nav-link position-relative" aria-haspopup="true" aria-expanded="false" aria-label="[[global:header.notifications]]">
<i component="notifications/icon" class="fa fa-fw {{{ if unreadCount.notification}}}fa-bell{{{ else }}}fa-bell-o{{{ end }}} unread-count" data-content="{unreadCount.notification}"></i>
</a>
<ul class="notifications-dropdown dropdown-menu dropdown-menu-end p-1 shadow" role="menu">
<li>
<div component="notifications/list" class="list-container notification-list overscroll-behavior-contain pe-1 ff-base ghost-scrollbar">
<div class="mb-2 p-1">
<div class="d-flex gap-1 justify-content-between">
<div class="d-flex gap-2 flex-grow-1 placeholder-wave">
<div class="placeholder" style="width: 32px; height: 32px;"></div>
<div class="flex-grow-1">
<div class="d-flex flex-column">
<div class="text-sm">
<span class="placeholder placeholder-sm col-4"></span>
<span class="placeholder placeholder-sm col-6"></span>
<span class="placeholder placeholder-sm col-7"></span>
<span class="placeholder placeholder-sm col-2"></span>
<span class="placeholder placeholder-sm col-5"></span>
</div>
<div class="text-xs">
<div class="placeholder placeholder-xs col-6"></div>
</div>
</div>
</div>
</div>
<div>
<button class="mark-read btn btn-ghost btn-sm d-flex align-items-center justify-content-center flex-grow-0 flex-shrink-0 p-1" style="width: 1.5rem; height: 1.5rem;">
<i class="unread fa fa-2xs fa-circle text-primary"></i>
</button>
</div>
</div>
</div>
</div>
</li>
<li class="dropdown-divider"></li>
<li>
<div class="d-flex justify-content-center gap-1 flex-wrap">
<a role="button" href="#" class="btn btn-sm btn-light mark-all-read flex-fill text-nowrap text-truncate ff-secondary"><i class="fa fa-check-double"></i> [[notifications:mark-all-read]]</a>
<a class="btn btn-sm btn-primary flex-fill text-nowrap text-truncate ff-secondary" href="{relative_path}/notifications"><i class="fa fa-list"></i> [[notifications:see-all]]</a>
</div>
</li>
</ul>
</li>
{{{ if canChat }}}
<li class="nav-item chats dropdown" title="[[global:header.chats]]">
<a class="nav-link" data-bs-toggle="dropdown" href="{relative_path}/user/{user.userslug}/chats" data-ajaxify="false" id="chat_dropdown" component="chat/dropdown" role="button" aria-haspopup="true" aria-expanded="false">
<i component="chat/icon" class="fa {{{ if unreadCount.chat}}}fa-comment{{{ else }}}fa-comment-o{{{ end }}} fa-fw unread-count" data-content="{unreadCount.chat}"></i> <span class="d-inline d-sm-none">[[global:header.chats]]</span>
</a>
<ul class="dropdown-menu dropdown-menu-end p-1" aria-labelledby="chat_dropdown" role="menu">
<li>
<ul component="chat/list" class="list-unstyled chat-list chats-list ghost-scrollbar pe-1">
<div class="rounded-1">
<div class="d-flex gap-1 justify-content-between">
<div class="dropdown-item p-2 d-flex gap-2 placeholder-wave">
<div class="main-avatar">
<div class="placeholder" style="width: 32px; height: 32px;"></div>
</div>
<div class="d-flex flex-grow-1 flex-column w-100">
<div class="text-xs"><div class="placeholder col-3"></div></div>
<div class="text-sm"><div class="placeholder col-11"></div></div>
<div class="text-xs"><div class="placeholder col-4"></div></div>
</div>
</div>
<div>
<button class="mark-read btn btn-ghost btn-sm d-flex align-items-center justify-content-center flex-grow-0 flex-shrink-0 p-1" style="width: 1.5rem; height: 1.5rem;">
<i class="unread fa fa-2xs fa-circle text-primary"></i>
</button>
</div>
</div>
</div>
</ul>
</li>
<li class="dropdown-divider"></li>
<li>
<div class="d-flex justify-content-center gap-1 flex-wrap">
<a class="btn btn-light btn-sm mark-all-read flex-fill text-nowrap" href="#" component="chats/mark-all-read"><i class="fa fa-check-double"></i> [[modules:chat.mark-all-read]]</a>
<a class="btn btn-primary btn-sm flex-fill text-nowrap" href="{relative_path}/user/{user.userslug}/chats"><i class="fa fa-comments"></i> [[modules:chat.see-all]]</a>
</div>
</li>
</ul>
</li>
{{{ end }}}
<li id="user_label" class="nav-item dropdown px-3" title="[[global:header.profile]]">
<a href="#" for="user-control-list-check" data-bs-toggle="dropdown" id="user_dropdown" role="button" component="header/avatar" aria-haspopup="true" aria-expanded="false">
{buildAvatar(user, "32px", true)}
<span id="user-header-name" class="d-block d-sm-none">{user.username}</span>
</a>
<input type="checkbox" class="hidden" id="user-control-list-check" aria-hidden="true">
<ul id="user-control-list" component="header/usercontrol" class="overscroll-behavior-contain user-dropdown dropdown-menu dropdown-menu-end shadow p-1 text-sm ff-base" role="menu">
<li>
<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="header/profilelink" href="{relative_path}/user/{user.userslug}" role="menuitem" aria-label="[[user:profile]]">
<span component="user/status" class="flex-shrink-0 border border-white border-2 rounded-circle status {user.status}"><span class="visually-hidden">[[global:{user.status}]]</span></span>
<span class="fw-semibold" component="header/username">{user.username}</span>
</a>
</li>
<li role="presentation" class="dropdown-divider"></li>
<li><h6 class="dropdown-header text-xs">[[global:status]]</h6></li>
<li>
<a href="#" class="dropdown-item rounded-1 user-status d-flex align-items-center gap-2 {{{ if user.online }}}selected{{{ end }}}" data-status="online" role="menuitem">
<span component="user/status" class="flex-shrink-0 border border-white border-2 rounded-circle status online"></span>
<span class="flex-grow-1">[[global:online]]</span>
</a>
</li>
<li>
<a href="#" class="dropdown-item rounded-1 user-status d-flex align-items-center gap-2 {{{ if user.away }}}selected{{{ end }}}" data-status="away" role="menuitem">
<span component="user/status" class="flex-shrink-0 border border-white border-2 rounded-circle status away"></span>
<span class="flex-grow-1">[[global:away]]</span>
</a>
</li>
<li>
<a href="#" class="dropdown-item rounded-1 user-status d-flex align-items-center gap-2 {{{ if user.dnd }}}selected{{{ end }}}" data-status="dnd" role="menuitem">
<span component="user/status" class="flex-shrink-0 border border-white border-2 rounded-circle status dnd"></span>
<span class="flex-grow-1">[[global:dnd]]</span>
</a>
</li>
<li>
<a href="#" class="dropdown-item rounded-1 user-status d-flex align-items-center gap-2 {{{ if user.offline }}}selected{{{ end }}}" data-status="offline" role="menuitem">
<span component="user/status" class="flex-shrink-0 border border-white border-2 rounded-circle status offline"></span>
<span class="flex-grow-1">[[global:invisible]]</span>
</a>
</li>
<li role="presentation" class="dropdown-divider"></li>
<li>
<a class="dropdown-item" href="{relative_path}/user/{user.userslug}/bookmarks" role="menuitem">
<i class="fa fa-fw fa-bookmark"></i> <span>[[user:bookmarks]]</span>
</a>
</li>
<li>
<a class="dropdown-item" component="header/profilelink/edit" href="{relative_path}/user/{user.userslug}/edit" role="menuitem">
<i class="fa fa-fw fa-edit"></i> <span>[[user:edit-profile]]</span>
</a>
</li>
<li>
<a class="dropdown-item" component="header/profilelink/settings" href="{relative_path}/user/{user.userslug}/settings" role="menuitem">
<i class="fa fa-fw fa-gear"></i> <span>[[user:settings]]</span>
</a>
</li>
{{{ if showModMenu }}}
<li role="presentation" class="dropdown-divider"></li>
<li><h6 class="dropdown-header">[[pages:moderator-tools]]</h6></li>
<li>
<a class="dropdown-item" href="{relative_path}/flags" role="menuitem">
<i class="fa fa-fw fa-flag"></i> <span>[[pages:flagged-content]]</span>
</a>
</li>
<li>
<a class="dropdown-item" href="{relative_path}/post-queue" role="menuitem">
<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:post-queue]]</span>
</a>
</li>
{{{ if registrationQueueEnabled }}}
<li>
<a class="dropdown-item" href="{relative_path}/registration-queue" role="menuitem">
<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:registration-queue]]</span>
</a>
</li>
{{{ end }}}
<li>
<a class="dropdown-item" href="{relative_path}/ip-blacklist" role="menuitem">
<i class="fa fa-fw fa-ban"></i> <span>[[pages:ip-blacklist]]</span>
</a>
</li>
{{{ else }}}
{{{ if postQueueEnabled }}}
<li>
<a class="dropdown-item" href="{relative_path}/post-queue" role="menuitem">
<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:post-queue]]</span>
</a>
</li>
{{{ end }}}
{{{ end }}}
<li role="presentation" class="dropdown-divider"></li>
<li component="user/logout">
<form method="post" action="{relative_path}/logout">
<input type="hidden" name="_csrf" value="{config.csrf_token}">
<input type="hidden" name="noscript" value="true">
<button type="submit" class="dropdown-item" role="menuitem">
<i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span>
</button>
</form>
</li>
</ul>
</li>
</ul>
{{{ else }}}
<ul id="logged-out-menu" class="navbar-nav me-0 mb-2 mb-lg-0 align-items-center">
{{{ if allowRegistration }}}
<li class="nav-item">
<a class="nav-link" href="{relative_path}/register">
<i class="fa fa-pencil fa-fw d-inline-block d-sm-none"></i>
<span>[[global:register]]</span>
</a>
</li>
{{{ end }}}
<li class="nav-item">
<a class="nav-link" href="{relative_path}/login">
<i class="fa fa-sign-in fa-fw d-inline-block d-sm-none"></i>
<span>[[global:login]]</span>
</a>
</li>
</ul>
{{{ end }}}
{{{ else }}}
<ul class="navbar-nav me-0 mb-2 mb-lg-0"></ul>
<li class="nav-item">
<a href="{relative_path}/login">
<i class="fa fa-sign-in fa-fw d-block d-sm-none"></i>
<span>[[global:login]]</span>
</a>
</li>
</ul>
{{{ end }}}
</div>
</div>
</nav>
<script>
const rect = document.getElementById('header-menu').getBoundingClientRect();
const offset = Math.max(0, rect.bottom);
document.documentElement.style.setProperty('--panel-offset', offset + `px`);
</script>
<div class="container-lg pt-3" id="content">
<noscript>
<div class="alert alert-danger">
<p>
Your browser does not seem to support JavaScript. As a result, your viewing experience will be diminished, and you have been placed in <strong>read-only mode</strong>.
</p>
<p>
Please download a browser that supports JavaScript, or enable it if it's disabled (i.e. NoScript).
</p>
</div>
</noscript>
{{{ if noScriptMessage }}}
<noscript>
<div class="alert alert-info">
<p>
{noScriptMessage}
</p>
</div>
</noscript>
{{{ end }}}