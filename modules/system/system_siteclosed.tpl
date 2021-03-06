<!DOCTYPE html>
<html lang="<{$xoops_langcode}>">
  <head>
    <!--目前$_SESSION['bootstrap']="<{php}>echo $_SESSION['bootstrap'];<{/php}>"; -->
    <!--將目前的資料夾名稱，設定為樣板標籤變數 theme_name-->
    <{assign var=theme_name value=$xoTheme->folderName}>

    <!--載入由使用者設定的各項佈景變數-->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/get_var.tpl"}>

    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/meta.tpl"}>

    <!-- 網站的標題及標語 -->
    <title><{$xoops_sitename}> - <{$xoops_pagetitle}></title>

    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/link_css.tpl"}>

    <!-- 給模組套用的樣板標籤 -->
    <{$xoops_module_header}>
    <script src="<{$xoops_url}>/browse.php?Frameworks/jquery/jquery.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/jquery/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/jquery/ui/jquery-ui.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/fancyBox/lib/jquery.mousewheel-3.0.6.pack.js" type="text/javascript"></script>

    <!-- 局部套用的樣式，如果有載入完整樣式 theme_css.tpl 那就不需要這一部份 -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/theme_css.tpl"}>

    <!-- 載入 jquery -->
    <style type="text/css">
    body{
      font-family:<{$font_family}>;
    }
    </style>
  </head>

  <body>
    <div id="container" class="container">

      <div id="container_title">
        <{if $logo_img}>
          <div id="img_title">
            <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/logo.tpl"}>
          </div>
        <{else}>
          <div id="title">
            <{$xoops_sitename}>
          </div>
        <{/if}>
      </div>

      <div class="row" id="container_header">
        <div class="col-sm-8 col-sm-8" id="container_logo">
          <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/menu/responsive_slide.tpl"}>
        </div>

        <div class="col-sm-4 col-sm-4" id="container_block">
          <{block id=$block_id}>
        </div>
      </div>


      <div id="container_menu">
        <div id="container_nav" class="text-center">
          <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/navbar.tpl"}>
        </div>
      </div>


      <div id="container_content">
        <!-- 載入布局 -->
        <div class="row">
          <div class="col-sm-12">
              <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/siteclosed_login.tpl"}>
          </div>
        </div>

      </div>


      <div id="container_foot_img">
        <img src="<{xoImgUrl images/templatemo_footer_background.gif}>" alt="background" title="background" style="max-width: 100%;">
      </div>


      <div id="container_footer">
        <{$xoops_footer}>
      </div>

    </div>

    <!-- 載入 BootStrap所需的javascript -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/bootstrap_js.tpl"}>

    <!-- 載入自訂的javascript -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/my_js.tpl"}>

    <!-- 是否顯示樣板變數資訊 -->
    <{if $show_var==1}>
      <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/show_var.tpl"}>
    <{/if}>
  </body>
</html>