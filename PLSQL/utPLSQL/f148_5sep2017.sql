set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>25052012
,p_default_application_id=>148
,p_default_owner=>'ITSR'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 148 - UTUI
--
-- Application Export:
--   Application:     148
--   Name:            UTUI
--   Date and Time:   15:29 Tuesday September 5, 2017
--   Exported By:     SAROJ
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     71403181798535
--

-- Application Statistics:
--   Pages:                      9
--     Items:                   17
--     Validations:              1
--     Processes:               10
--     Regions:                 21
--     Buttons:                  8
--     Dynamic Actions:          2
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  3
--       Breadcrumbs:            1
--         Entries:              6
--     Security:
--       Authentication:         2
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               8
--       LOVs:                   1
--       Shortcuts:              1
--       Plug-ins:               5
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,148)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'ITSR')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'UTUI')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'UTUI')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'3ACD230D1F1E38C0C39651AD4442F5BF747B8B57778884F02888E3291F24BFD2'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(22609193560650411)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:utPLSQL'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_FAVICONS'
,p_substitution_value_01=>'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-universal-theme.ico"><link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-universal-theme-16x16.png"><link rel="icon" sizes="32x32" href="#IMA'
||'GE_PREFIX#apex_ui/img/favicons/app-sample-universal-theme-32x32.png"><link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/app-sample-universal-theme.png">'
,p_last_updated_by=>'ITSR'
,p_last_upd_yyyymmddhh24miss=>'20170905152724'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(18201218950512651)
,p_name=>'HomeList'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18201466314512654)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Test Suites'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-briefcase'
,p_list_text_01=>'<center>List of all test suites available</center>'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18201886149512655)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Test Suite Run History'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tachometer'
,p_list_text_01=>'<center>Top level run details of all test suites.</center>'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18202296075512655)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Test Suite Run Details'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6:::'
,p_list_item_icon=>'fa-paper-plane'
,p_list_text_01=>'<center>Individual test case level run details</center>'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(90024095775172265)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(90067700476172462)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-desktop'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22509257122326383)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Test Suites'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-briefcase'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22509846770331543)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Test Suite Runs'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tachometer'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18156613157436288)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Test Suite Run Details'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6:::'
,p_list_item_icon=>'fa-tags'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(90066204936172440)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22779502422526556)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-question-circle'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22496432230964348)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'f?p=&APP_ID.:0:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(90066396255172443)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Sign Off'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(22496432230964348)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(90023813550172265)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(90023932938172265)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(90023981764172265)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(90662741252513663)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.FLOT.PIE'
,p_attribute_01=>'1.333'
,p_attribute_02=>'1.5'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(90668175063568763)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.D3.BARCHART'
,p_attribute_01=>'3'
,p_attribute_02=>'1.333'
,p_attribute_03=>'480'
,p_attribute_04=>'REGION'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(25843421807227070)
,p_lov_name=>'TYPES'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select NAME as display_value, ID as return_value ',
'  from EBA_FEEDBACK_TYPES',
' order by display_seq, name'))
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(90067587527172460)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15693836187126108)
,p_short_name=>'Test Suites'
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15695037647126111)
,p_parent_id=>wwv_flow_api.id(15693836187126108)
,p_short_name=>'Test Suite'
,p_link=>'f?p=&APP_ID.:4:&SESSION.'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15705059894295204)
,p_parent_id=>0
,p_short_name=>'Test Suite Runs'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18157537604436288)
,p_short_name=>'Test Suite Run Details'
,p_link=>'f?p=&APP_ID.:6:&SESSION.'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25901484779453936)
,p_short_name=>'Help'
,p_link=>'f?p=&APP_ID.:42:&SESSION.'
,p_page_id=>42
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(90068019820172463)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90024230932172296)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90024306382172302)
,p_page_template_id=>wwv_flow_api.id(90024230932172296)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90024338109172302)
,p_page_template_id=>wwv_flow_api.id(90024230932172296)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90024471010172302)
,p_page_template_id=>wwv_flow_api.id(90024230932172296)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90024559224172302)
,p_page_template_id=>wwv_flow_api.id(90024230932172296)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90024644678172302)
,p_page_template_id=>wwv_flow_api.id(90024230932172296)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90024827118172302)
,p_page_template_id=>wwv_flow_api.id(90024230932172296)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90024873256172302)
,p_page_template_id=>wwv_flow_api.id(90024230932172296)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90025020648172302)
,p_page_template_id=>wwv_flow_api.id(90024230932172296)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90025114764172334)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90025175301172335)
,p_page_template_id=>wwv_flow_api.id(90025114764172334)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90025312334172335)
,p_page_template_id=>wwv_flow_api.id(90025114764172334)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90025405759172335)
,p_page_template_id=>wwv_flow_api.id(90025114764172334)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90025474972172335)
,p_page_template_id=>wwv_flow_api.id(90025114764172334)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90025564831172335)
,p_page_template_id=>wwv_flow_api.id(90025114764172334)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90025684121172335)
,p_page_template_id=>wwv_flow_api.id(90025114764172334)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90025826013172335)
,p_page_template_id=>wwv_flow_api.id(90025114764172334)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90025835284172335)
,p_page_template_id=>wwv_flow_api.id(90025114764172334)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90025959837172335)
,p_page_template_id=>wwv_flow_api.id(90025114764172334)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90026127733172337)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90026185445172337)
,p_page_template_id=>wwv_flow_api.id(90026127733172337)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90026278173172337)
,p_page_template_id=>wwv_flow_api.id(90026127733172337)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90026398486172337)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90026441896172337)
,p_page_template_id=>wwv_flow_api.id(90026398486172337)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90026578848172337)
,p_page_template_id=>wwv_flow_api.id(90026398486172337)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90026668590172337)
,p_page_template_id=>wwv_flow_api.id(90026398486172337)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90026806023172337)
,p_page_template_id=>wwv_flow_api.id(90026398486172337)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90026883504172337)
,p_page_template_id=>wwv_flow_api.id(90026398486172337)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90027025390172337)
,p_page_template_id=>wwv_flow_api.id(90026398486172337)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90027119317172337)
,p_page_template_id=>wwv_flow_api.id(90026398486172337)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90027138622172337)
,p_page_template_id=>wwv_flow_api.id(90026398486172337)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90027242982172337)
,p_page_template_id=>wwv_flow_api.id(90026398486172337)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90027408753172338)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90027437251172340)
,p_page_template_id=>wwv_flow_api.id(90027408753172338)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90027589122172340)
,p_page_template_id=>wwv_flow_api.id(90027408753172338)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90027717590172340)
,p_page_template_id=>wwv_flow_api.id(90027408753172338)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90027826362172340)
,p_page_template_id=>wwv_flow_api.id(90027408753172338)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90027845620172340)
,p_page_template_id=>wwv_flow_api.id(90027408753172338)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90028031611172340)
,p_page_template_id=>wwv_flow_api.id(90027408753172338)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90028068411172340)
,p_page_template_id=>wwv_flow_api.id(90027408753172338)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90028230074172341)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90028247014172341)
,p_page_template_id=>wwv_flow_api.id(90028230074172341)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90028368042172341)
,p_page_template_id=>wwv_flow_api.id(90028230074172341)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90028476278172341)
,p_page_template_id=>wwv_flow_api.id(90028230074172341)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90028551180172341)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90028727587172341)
,p_page_template_id=>wwv_flow_api.id(90028551180172341)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90028771342172341)
,p_page_template_id=>wwv_flow_api.id(90028551180172341)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90028863425172341)
,p_page_template_id=>wwv_flow_api.id(90028551180172341)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90028976153172341)
,p_page_template_id=>wwv_flow_api.id(90028551180172341)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90029131039172341)
,p_page_template_id=>wwv_flow_api.id(90028551180172341)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90029153597172341)
,p_page_template_id=>wwv_flow_api.id(90028551180172341)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90029288031172341)
,p_page_template_id=>wwv_flow_api.id(90028551180172341)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90029338396172341)
,p_page_template_id=>wwv_flow_api.id(90028551180172341)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90029459374172341)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90029575794172343)
,p_page_template_id=>wwv_flow_api.id(90029459374172341)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90029645901172343)
,p_page_template_id=>wwv_flow_api.id(90029459374172341)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90029817907172343)
,p_page_template_id=>wwv_flow_api.id(90029459374172341)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90029885318172343)
,p_page_template_id=>wwv_flow_api.id(90029459374172341)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90029943102172343)
,p_page_template_id=>wwv_flow_api.id(90029459374172341)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90030131915172343)
,p_page_template_id=>wwv_flow_api.id(90029459374172341)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90030134108172343)
,p_page_template_id=>wwv_flow_api.id(90029459374172341)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(90030268598172346)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90030364369172346)
,p_page_template_id=>wwv_flow_api.id(90030268598172346)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90030497492172346)
,p_page_template_id=>wwv_flow_api.id(90030268598172346)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(90030558585172346)
,p_page_template_id=>wwv_flow_api.id(90030268598172346)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(90061026822172419)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(90061083446172419)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(90061150223172419)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90030649711172349)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90030771219172349)
,p_plug_template_id=>wwv_flow_api.id(90030649711172349)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90032231063172365)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90032278044172366)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90032419352172366)
,p_plug_template_id=>wwv_flow_api.id(90032278044172366)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90032514996172366)
,p_plug_template_id=>wwv_flow_api.id(90032278044172366)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90033185878172366)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90033304551172368)
,p_plug_template_id=>wwv_flow_api.id(90033185878172366)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90033356857172368)
,p_plug_template_id=>wwv_flow_api.id(90033185878172366)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90036574481172380)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90036727320172380)
,p_plug_template_id=>wwv_flow_api.id(90036574481172380)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90036738365172380)
,p_plug_template_id=>wwv_flow_api.id(90036574481172380)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038695844172384)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038823677172384)
,p_plug_template_id=>wwv_flow_api.id(90038695844172384)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90038866049172384)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90038948760172384)
,p_plug_template_id=>wwv_flow_api.id(90038866049172384)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90039782612172384)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90040073614172385)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90040144860172385)
,p_plug_template_id=>wwv_flow_api.id(90040073614172385)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90040252066172385)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90040370440172385)
,p_plug_template_id=>wwv_flow_api.id(90040252066172385)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90040489542172385)
,p_plug_template_id=>wwv_flow_api.id(90040252066172385)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90042405446172388)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90042489505172388)
,p_plug_template_id=>wwv_flow_api.id(90042405446172388)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90042593271172388)
,p_plug_template_id=>wwv_flow_api.id(90042405446172388)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90043608140172388)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(90044056832172388)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(90044170223172388)
,p_plug_template_id=>wwv_flow_api.id(90044056832172388)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90052300708172401)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90053992102172402)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90056088137172402)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-'
||'badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90056897165172407)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90057809270172407)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90058316416172407)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90058349455172407)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90058483932172409)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav t-Body-nav--dark" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90058585946172409)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90059468789172412)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(90060001286172412)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90044721207172390)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90044785712172390)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90046473592172391)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90048547726172393)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90049029329172393)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90049074035172393)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(90049074035172393)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90050425146172393)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(90051374369172396)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(90060450137172413)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(90060541745172418)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(90060709386172418)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(90060829966172418)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(90060850589172418)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(90061549073172419)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(90061819276172424)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(90061681156172423)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(90062228308172430)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(90029459374172341)
,p_default_dialog_template=>wwv_flow_api.id(90028230074172341)
,p_error_template=>wwv_flow_api.id(90026127733172337)
,p_printer_friendly_template=>wwv_flow_api.id(90029459374172341)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(90026127733172337)
,p_default_button_template=>wwv_flow_api.id(90061083446172419)
,p_default_region_template=>wwv_flow_api.id(90040252066172385)
,p_default_chart_template=>wwv_flow_api.id(90040252066172385)
,p_default_form_template=>wwv_flow_api.id(90040252066172385)
,p_default_reportr_template=>wwv_flow_api.id(90040252066172385)
,p_default_tabform_template=>wwv_flow_api.id(90040252066172385)
,p_default_wizard_template=>wwv_flow_api.id(90040252066172385)
,p_default_menur_template=>wwv_flow_api.id(90043608140172388)
,p_default_listr_template=>wwv_flow_api.id(90040252066172385)
,p_default_irr_template=>wwv_flow_api.id(90039782612172384)
,p_default_report_template=>wwv_flow_api.id(90049074035172393)
,p_default_label_template=>wwv_flow_api.id(90060541745172418)
,p_default_menu_template=>wwv_flow_api.id(90061549073172419)
,p_default_calendar_template=>wwv_flow_api.id(90061681156172423)
,p_default_list_template=>wwv_flow_api.id(90056088137172402)
,p_default_nav_list_template=>wwv_flow_api.id(90059468789172412)
,p_default_top_nav_list_temp=>wwv_flow_api.id(90059468789172412)
,p_default_side_nav_list_temp=>wwv_flow_api.id(90058483932172409)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(90032278044172366)
,p_default_dialogr_template=>wwv_flow_api.id(90032231063172365)
,p_default_option_label=>wwv_flow_api.id(90060541745172418)
,p_default_required_label=>wwv_flow_api.id(90060829966172418)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(90058349455172407)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>67
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(30098483226464549)
,p_theme_id=>42
,p_name=>'Vita (Red)'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#e00606","@g_Body-Title-BG":"#ffffff","@g_Link-Base":"#fa0a0a"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#7645349820768354.css'
,p_theme_roller_read_only=>false
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(90061847188172426)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(90061961023172429)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(90062124778172429)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200A202A20566974612028526564290A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290A202A200A202A2054686973204353532066696C65207761732067656E65726174656420';
wwv_flow_api.g_varchar2_table(2) := '7573696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200A202A200A202A2F0A0A2E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A2023356635663566';
wwv_flow_api.g_varchar2_table(3) := '3B0A7D0A2E742D426F64792D696E666F202E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20233636363636363B0A7D0A2E742D526567696F6E202E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20233636363636';
wwv_flow_api.g_varchar2_table(4) := '363B0A7D0A2E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233436343634363B0A7D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233464346434643B0A7D0A2E742D52';
wwv_flow_api.g_varchar2_table(5) := '6567696F6E202E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233464346434643B0A7D0A0A2E742D416C6572742D2D77697A617264207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D416C6572742D2D63';
wwv_flow_api.g_varchar2_table(6) := '6F6C6F7242472E742D416C6572742D2D7761726E696E672C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77207B0A20206261636B67726F756E642D636F6C6F723A20236666666165353B0A7D0A2E742D416C657274';
wwv_flow_api.g_varchar2_table(7) := '2D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F772068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E';
wwv_flow_api.g_varchar2_table(8) := '696E672068332C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77206833207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E';
wwv_flow_api.g_varchar2_table(9) := '67202E742D416C6572742D626F64792C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77202E742D416C6572742D626F6479207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D416C6572742D2D636F6C';
wwv_flow_api.g_varchar2_table(10) := '6F7242472E742D416C6572742D2D73756363657373207B0A20206261636B67726F756E642D636F6C6F723A20236563666265653B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D737563636573732068322C0A2E742D416C65';
wwv_flow_api.g_varchar2_table(11) := '72742D2D636F6C6F7242472E742D416C6572742D2D73756363657373206833207B0A2020636F6C6F723A20233334333433343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373202E742D416C6572742D626F';
wwv_flow_api.g_varchar2_table(12) := '6479207B0A2020636F6C6F723A20233734373437343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(13) := '726F756E642D636F6C6F723A20236666656165393B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7265642068322C0A2E742D';
wwv_flow_api.g_varchar2_table(14) := '416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068332C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564206833207B0A2020636F6C6F723A20233335333533353B0A7D0A2E742D416C6572742D';
wwv_flow_api.g_varchar2_table(15) := '2D636F6C6F7242472E742D416C6572742D2D64616E676572202E742D416C6572742D626F64792C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564202E742D416C6572742D626F6479207B0A2020636F6C6F723A2023373437';
wwv_flow_api.g_varchar2_table(16) := '3437343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F207B0A20206261636B67726F756E642D636F6C6F723A20236433653566373B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D69';
wwv_flow_api.g_varchar2_table(17) := '6E666F2068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F206833207B0A2020636F6C6F723A20233236323632363B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F202E742D';
wwv_flow_api.g_varchar2_table(18) := '416C6572742D626F6479207B0A2020636F6C6F723A20233636363636363B0A7D0A0A2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E2C0A2E742D416C6572742D2D79656C6C6F77202E742D416C6572742D69636F6E207B0A';
wwv_flow_api.g_varchar2_table(19) := '2020636F6C6F723A20236666636330303B0A7D0A0A2E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E207B0A2020636F6C6F723A20233463643936343B0A7D0A0A2E742D416C6572742D2D696E666F202E742D416C6572742D';
wwv_flow_api.g_varchar2_table(20) := '69636F6E207B0A2020636F6C6F723A20233235373863663B0A7D0A0A2E742D416C6572742D2D64616E676572202E742D416C6572742D69636F6E2C0A2E742D416C6572742D2D726564202E742D416C6572742D69636F6E207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(21) := '6539306330303B0A7D0A2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D416C6572742D2D686F72697A6F6E74616C2C0A2E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(22) := '77697A617264207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D616C657274202E742D416C65';
wwv_flow_api.g_varchar2_table(23) := '72742D2D70616765207B0A2020626F782D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E312920696E7365743B0A7D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373207B0A20206261';
wwv_flow_api.g_varchar2_table(24) := '636B67726F756E642D636F6C6F723A20726762612837342C203137302C2034342C20302E39293B0A7D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D49636F6E2C0A2E742D416C6572742D2D706167652E742D';
wwv_flow_api.g_varchar2_table(25) := '416C6572742D2D73756363657373202E742D416C6572742D7469746C65207B0A2020636F6C6F723A20234646463B0A7D0A2E742D416C6572742D2D70616765202E742D427574746F6E2D2D636C6F7365416C657274207B0A2020636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(26) := '6128302C20302C20302C20302E35293B0A7D0A0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020236536653665362069';
wwv_flow_api.g_varchar2_table(27) := '6E7365743B0A7D0A2E742D42616467654C6973742061207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6974656D3A686F766572202E742D4261646765';
wwv_flow_api.g_varchar2_table(28) := '4C6973742D76616C7565207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C7565207B0A2020636F6C6F723A20233733';
wwv_flow_api.g_varchar2_table(29) := '373337333B0A2020626F782D736861646F773A2030203020302031707820726762612836342C2036342C2036342C20302E312920696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D42616467654C69';
wwv_flow_api.g_varchar2_table(30) := '73742D2D63697263756C6172202E742D42616467654C6973742D76616C75652061207B0A2020626F782D736861646F773A20302030203020317078202365303036303620696E7365743B0A2020636F6C6F723A20236661306130613B0A7D0A2E742D4261';
wwv_flow_api.g_varchar2_table(31) := '6467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A686F766572207B0A2020626F782D736861646F773A20302030203020347078202365303036303620696E7365743B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(32) := '6F6C6F723A20236530303630363B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A666F637573207B0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(33) := '203020302030203270782072676261283232342C20362C20362C20302E3235292C20302030203020317078202365303036303620696E7365743B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6C6162';
wwv_flow_api.g_varchar2_table(34) := '656C207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(35) := '6F723A20236530303630363B0A20207472616E736974696F6E3A20626F782D736861646F7720302E31732C20636F6C6F7220302E31732C206261636B67726F756E642D636F6C6F7220302E33733B0A7D0A2E742D42616467654C6973742D2D6369726375';
wwv_flow_api.g_varchar2_table(36) := '6C617220612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0A2020626F782D736861646F773A20302030203020347078202365303036303620696E7365743B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(37) := '642D636F6C6F723A20236530303630363B0A2020636F6C6F723A20234646463B0A7D0A2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720612E742D42616467654C6973742D777261703A';
wwv_flow_api.g_varchar2_table(38) := '686F766572202E742D42616467654C6973742D76616C7565207B0A2020626F782D736861646F773A20302030203020387078207267626128302C20302C20302C20302E312920696E7365743B0A7D0A0A2E742D42616467654C6973742D2D666C6F617420';
wwv_flow_api.g_varchar2_table(39) := '2E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D666C6578202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D636F6C73202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(40) := '2D6974656D3A61667465722C0A2E742D42616467654C6973742D2D6669786564202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D737461636B6564202E742D42616467654C6973742D6974656D3A6166';
wwv_flow_api.g_varchar2_table(41) := '746572207B0A20206261636B67726F756E643A20236536653665363B0A7D0A2E742D42616467654C6973742D2D666C6F6174202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D666C6578202E742D42';
wwv_flow_api.g_varchar2_table(42) := '616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D636F6C73202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D6669786564202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(43) := '6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D737461636B6564202E742D42616467654C6973742D6974656D3A6265666F7265207B0A20206261636B67726F756E643A20236536653665363B0A7D0A2E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(44) := '2D626F74746F6D426F72646572207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236638663866383B0A7D0A0A2E612D4261724368617274202E612D42617243686172742D6974656D3A686F766572207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(45) := '2D636F6C6F723A20236632663266323B0A7D0A2E742D426F6479202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233739373937393B0A7D0A2E742D42';
wwv_flow_api.g_varchar2_table(46) := '6F64792D7469746C65202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D426F64792D696E666F202E612D4261724368';
wwv_flow_api.g_varchar2_table(47) := '617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D20';
wwv_flow_api.g_varchar2_table(48) := '2E612D42617243686172742D76616C75652C0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A2023383038303830';
wwv_flow_api.g_varchar2_table(49) := '3B0A7D0A2E612D4261724368617274202E612D42617243686172742D6974656D20696D67207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E612D4261724368617274202E612D42617243686172742D626172207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(50) := '726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0A7D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6261722C0A2E612D42617243686172742D2D636C6173736963202E612D42';
wwv_flow_api.g_varchar2_table(51) := '617243686172742D66696C6C6564207B0A2020626F726465722D7261646975733A203170783B0A7D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172742D626172';
wwv_flow_api.g_varchar2_table(52) := '207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6261722C0A2E612D42617243686172742D2D6D6F6465';
wwv_flow_api.g_varchar2_table(53) := '726E202E612D42617243686172742D66696C6C6564207B0A2020626F726465722D7261646975733A203170783B0A7D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6974656D3A686F766572202E612D426172436861';
wwv_flow_api.g_varchar2_table(54) := '72742D626172207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E612D42617243686172742D66696C6C6564207B0A20206261636B67726F756E642D636F6C6F723A2023653030363036';
wwv_flow_api.g_varchar2_table(55) := '3B0A7D0A0A626F64792C0A2E742D426F6479207B0A20206261636B67726F756E643A20236638663866383B0A2020636F6C6F723A20233339333933393B0A7D0A61207B0A2020636F6C6F723A20236661306130613B0A7D0A2E742D426F64792D7469746C';
wwv_flow_api.g_varchar2_table(56) := '6520612C0A2E742D426F64792D696E666F2061207B0A2020636F6C6F723A20236536303530353B0A7D0A2E742D426F64792D616374696F6E73207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D426F64792D74';
wwv_flow_api.g_varchar2_table(57) := '69746C65207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E75692D7769646765742D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(58) := '666666663B0A7D0A2E742D426F6479202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(59) := '20233430343034303B0A7D0A2E742D426F64792D696E666F202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E75692D7769646765742D636F6E74656E742C0A2E742D42';
wwv_flow_api.g_varchar2_table(60) := '7574746F6E526567696F6E202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D73696465207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A202063';
wwv_flow_api.g_varchar2_table(61) := '6F6C6F723A20233339333933393B0A7D0A2E617065782D7264732D636F6E7461696E6572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D696E666F202E617065782D7264732D636F6E';
wwv_flow_api.g_varchar2_table(62) := '7461696E6572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D696E666F207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D7469746C652E';
wwv_flow_api.g_varchar2_table(63) := '6A732D6869646542726561646372756D6273207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0A7D0A2E742D426F64792D746F70427574746F6E207B0A2020626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(64) := '20313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D746F70427574746F6E3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D42';
wwv_flow_api.g_varchar2_table(65) := '6F64792D746F70427574746F6E3A616374697665202E612D49636F6E207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D426F64792D746F70427574746F6E202E612D49636F6E207B0A2020636F6C6F723A20236536653665363B0A7D0A0A';
wwv_flow_api.g_varchar2_table(66) := '2E617065782D736964652D6E6176202E742D426F64792D6E61762C0A2E617065782D736964652D6E6176202E742D426F64792D616374696F6E732C0A2E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0A2020746F703A203430';
wwv_flow_api.g_varchar2_table(67) := '70783B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0A202020206C6566743A2032303070783B0A';
wwv_flow_api.g_varchar2_table(68) := '20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C656674';
wwv_flow_api.g_varchar2_table(69) := '3A2032303070783B0A20207D0A7D0A2E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0A20206D617267696E2D6C6566743A20303B0A7D0A0A2E617065782D746F702D6E6176202E742D426F64792D616374696F6E73207B0A2020';
wwv_flow_api.g_varchar2_table(70) := '746F703A20383070783B0A7D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65207B0A2020746F703A20383070783B0A7D0A0A2E742D426F64792D6E6176207B0A202077696474683A2032303070783B0A7D0A0A2E742D426F64792D';
wwv_flow_api.g_varchar2_table(71) := '616374696F6E73207B0A202077696474683A2032303070783B0A7D0A2E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D3430';
wwv_flow_api.g_varchar2_table(72) := '70782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D34307078293B0A20207472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0A7D0A0A406D65646961206F6E6C7920';
wwv_flow_api.g_varchar2_table(73) := '73637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D426F64792D73696465207B0A2020202077696474683A2032343070783B0A202020206C6566743A20343070783B0A20207D0A7D0A0A2E617065782D73696465';
wwv_flow_api.g_varchar2_table(74) := '2D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0A20206D617267696E2D6C6566743A20343070783B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030';
wwv_flow_api.g_varchar2_table(75) := '293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465283136307078293B0A20207472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A7D0A406D65646961206F6E6C792073637265656E20616E';
wwv_flow_api.g_varchar2_table(76) := '6420286D61782D77696474683A20343830707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465';
wwv_flow_api.g_varchar2_table(77) := '64202E742D426F64792D736964652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20303B0A20207D0A20202E617065782D7369';
wwv_flow_api.g_varchar2_table(78) := '64652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C2030';
wwv_flow_api.g_varchar2_table(79) := '2C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20207D0A7D0A406D65646961206F6E6C';
wwv_flow_api.g_varchar2_table(80) := '792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65';
wwv_flow_api.g_varchar2_table(81) := '2C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E742C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E';
wwv_flow_api.g_varchar2_table(82) := '6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472';
wwv_flow_api.g_varchar2_table(83) := '616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0A202020206C6566743A203230';
wwv_flow_api.g_varchar2_table(84) := '3070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20323030';
wwv_flow_api.g_varchar2_table(85) := '70783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A203070783B0A2020';
wwv_flow_api.g_varchar2_table(86) := '7D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0A20202E6170';
wwv_flow_api.g_varchar2_table(87) := '65782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A202020202D6D';
wwv_flow_api.g_varchar2_table(88) := '732D7472616E73666F726D3A207472616E736C617465283230307078293B0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E617645';
wwv_flow_api.g_varchar2_table(89) := '7870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D73';
wwv_flow_api.g_varchar2_table(90) := '2D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D42';
wwv_flow_api.g_varchar2_table(91) := '6F64792D73696465207B0A202020206C6566743A20303B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A20';
wwv_flow_api.g_varchar2_table(92) := '2020206D617267696E2D6C6566743A2032383070783B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C617465';
wwv_flow_api.g_varchar2_table(93) := '283136307078293B0A202020207472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A';
wwv_flow_api.g_varchar2_table(94) := '20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D';
wwv_flow_api.g_varchar2_table(95) := '7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E74';
wwv_flow_api.g_varchar2_table(96) := '2D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E7366';
wwv_flow_api.g_varchar2_table(97) := '6F726D3A206E6F6E653B0A202020206D617267696E2D6C6566743A2032303070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D';
wwv_flow_api.g_varchar2_table(98) := '636F6E74656E74207B0A202020206D617267696E2D6C6566743A2034343070783B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F72';
wwv_flow_api.g_varchar2_table(99) := '6D3A206E6F6E653B0A20207D0A7D0A0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61762C0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E';
wwv_flow_api.g_varchar2_table(100) := '6176202E742D547265654E6176207B0A202077696474683A20343070783B0A7D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E742C0A2E617065782D736964652D6E61762E6A732D6E';
wwv_flow_api.g_varchar2_table(101) := '6176436F6C6C6170736564202E742D426F64792D7469746C652C0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0A20206D617267696E2D6C6566743A20343070783B0A7D0A406D6564';
wwv_flow_api.g_varchar2_table(102) := '6961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0A202020202D7765626B69742D74';
wwv_flow_api.g_varchar2_table(103) := '72616E73666F726D3A207472616E736C61746558282D34307078293B0A202020202D6D732D7472616E73666F726D3A207472616E736C61746558282D34307078293B0A202020207472616E73666F726D3A207472616E736C61746558282D34307078293B';
wwv_flow_api.g_varchar2_table(104) := '0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0A';
wwv_flow_api.g_varchar2_table(105) := '20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20303B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420';
wwv_flow_api.g_varchar2_table(106) := '286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0A202020206D617267696E2D6C6566743A20303B0A202020206C6566743A20';
wwv_flow_api.g_varchar2_table(107) := '343070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206D617267696E2D6C6566743A20303B0A20';
wwv_flow_api.g_varchar2_table(108) := '207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2032383070783B0A20';
wwv_flow_api.g_varchar2_table(109) := '207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0A202020';
wwv_flow_api.g_varchar2_table(110) := '206C6566743A20343070783B0A20207D0A7D0A0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0A20206D617267696E2D72696768743A20303B0A7D0A2E742D50616765426F64792E6A732D';
wwv_flow_api.g_varchar2_table(111) := '7269676874457870616E646564202E742D426F64792D6D61696E2C0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174';
wwv_flow_api.g_varchar2_table(112) := '653364282D32303070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0A7D0A406D65';
wwv_flow_api.g_varchar2_table(113) := '646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F6479';
wwv_flow_api.g_varchar2_table(114) := '2D6D61696E2C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6E6176207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E65';
wwv_flow_api.g_varchar2_table(115) := '3B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C';
wwv_flow_api.g_varchar2_table(116) := '656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D72696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C65667420';
wwv_flow_api.g_varchar2_table(117) := '2E742D426F64792D7469746C65207B0A2020202072696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469';
wwv_flow_api.g_varchar2_table(118) := '746C65207B0A2020202072696768743A20303B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D';
wwv_flow_api.g_varchar2_table(119) := '73696465207B0A202020206D617267696E2D6C6566743A20303B0A202020206C6566743A20303B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20202E742D5061676542';
wwv_flow_api.g_varchar2_table(120) := '6F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D72696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E';
wwv_flow_api.g_varchar2_table(121) := '6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C';
wwv_flow_api.g_varchar2_table(122) := '656674202E742D426F64792D6E6176207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E';
wwv_flow_api.g_varchar2_table(123) := '742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0A2020202072696768743A2032303070783B0A20207D0A20202E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(124) := '2E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206C6566743A20343070783B0A20207D0A7D0A406D65646961206F';
wwv_flow_api.g_varchar2_table(125) := '6E6C792073637265656E20616E6420286D61782D77696474683A20393932707829207B0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E';
wwv_flow_api.g_varchar2_table(126) := '207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E742D50616765426F64792E6A732D72';
wwv_flow_api.g_varchar2_table(127) := '69676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674';
wwv_flow_api.g_varchar2_table(128) := '202E742D426F64792D736964652C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A202020202D7765626B69742D747261';
wwv_flow_api.g_varchar2_table(129) := '6E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0A202020207472616E73666F726D3A207472616E736C617465336428';
wwv_flow_api.g_varchar2_table(130) := '2D32303070782C20302C2030293B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206D617267696E2D6C6566';
wwv_flow_api.g_varchar2_table(131) := '743A20343070782021696D706F7274616E743B0A20207D0A7D0A0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0A20206D617267696E2D72696768743A203070783B0A7D0A2E742D5061';
wwv_flow_api.g_varchar2_table(132) := '6765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D7469746C65207B0A202072696768743A203070783B0A7D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D616374696F';
wwv_flow_api.g_varchar2_table(133) := '6E73207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A20207472616E73666F726D3A20';
wwv_flow_api.g_varchar2_table(134) := '7472616E736C61746533642832303070782C20302C2030293B0A7D0A0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D50616765426F64792D2D73686F774C656674202E742D';
wwv_flow_api.g_varchar2_table(135) := '426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2032343070783B0A20207D0A7D0A0A2E742D426F64792D636F6E74656E74496E6E6572207B0A20206D617267696E3A206175746F3B0A20206D61782D77696474683A206175';
wwv_flow_api.g_varchar2_table(136) := '746F3B0A7D0A0A2E742D42726561646372756D622D6974656D3A6166746572207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E39393335293B0A7D0A2E742D42726561646372756D622D6974656D202E742D49636F6E3A686F';
wwv_flow_api.g_varchar2_table(137) := '766572207B0A2020636F6C6F723A20236530303630363B0A7D0A2E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D3A6C6173742D6368696C64202E742D42';
wwv_flow_api.g_varchar2_table(138) := '726561646372756D622D6C6162656C207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0A2020636F6C6F723A20233430343034303B0A7D0A0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(139) := '2C0A2E612D427574746F6E207B0A2020626F726465723A206E6F6E653B0A2020636F6C6F723A20233338333833383B0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(140) := '236638663866383B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0A2020626F726465722D7261646975733A203270783B0A2020746578742D736861646F773A206E6F';
wwv_flow_api.g_varchar2_table(141) := '6E653B0A7D0A2E742D427574746F6E3A686F7665722C0A2E612D427574746F6E3A686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C203020302030203170782072676261';
wwv_flow_api.g_varchar2_table(142) := '28302C20302C20302C20302E3132352920696E7365743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C652C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C65207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(143) := '723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0A2020746578742D736861646F773A206E6F6E';
wwv_flow_api.g_varchar2_table(144) := '653B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A';
wwv_flow_api.g_varchar2_table(145) := '666F6375732C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A6163746976652C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D70';
wwv_flow_api.g_varchar2_table(146) := '6C653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A2020626F782D736861646F773A20302030203020317078202365366536653620696E7365743B0A7D0A406D656469612073637265656E20616E6420';
wwv_flow_api.g_varchar2_table(147) := '282D6D732D686967682D636F6E74726173743A2061637469766529207B0A20202E742D427574746F6E2C0A20202E612D427574746F6E207B0A20202020626F726465723A2031707820736F6C69643B0A20207D0A7D0A0A2E742D427574746F6E2D2D7072';
wwv_flow_api.g_varchar2_table(148) := '696D6172792C0A2E742D427574746F6E2D2D686F742C0A2E742D427574746F6E2D2D64616E6765722C0A2E742D427574746F6E2D2D7761726E696E672C0A2E742D427574746F6E2D2D73756363657373207B0A2020626F782D736861646F773A20302030';
wwv_flow_api.g_varchar2_table(149) := '20327078207267626128302C20302C20302C20302E30352920696E7365743B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D70';
wwv_flow_api.g_varchar2_table(150) := '6C652C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D737563636573732E742D4275';
wwv_flow_api.g_varchar2_table(151) := '74746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A2030203020302031707820696E7365743B0A7D0A2E742D427574746F6E2D2D7072696D6172793A686F7665722C0A2E742D427574746F6E2D2D7761726E696E673A686F766572207B';
wwv_flow_api.g_varchar2_table(152) := '0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C20302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0A7D0A2E742D427574746F6E2D2D686F74';
wwv_flow_api.g_varchar2_table(153) := '3A686F7665722C0A2E742D427574746F6E2D2D64616E6765723A686F7665722C0A2E742D427574746F6E2D2D737563636573733A686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E';
wwv_flow_api.g_varchar2_table(154) := '31292C20302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0A7D0A2E742D427574746F6E3A686F7665722C0A2E612D427574746F6E3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(155) := '6666666666663B0A20207A2D696E6465783A203130303B0A7D0A2E742D427574746F6E3A666F6375732C0A2E612D427574746F6E3A666F637573207B0A20206F75746C696E653A206E6F6E653B0A20207A2D696E6465783A203131303B0A7D0A2E742D42';
wwv_flow_api.g_varchar2_table(156) := '7574746F6E3A666F6375732C0A2E612D427574746F6E3A666F6375732C0A2E742D427574746F6E3A6163746976653A666F6375732C0A2E612D427574746F6E3A6163746976653A666F637573207B0A2020626F782D736861646F773A2030203020302031';
wwv_flow_api.g_varchar2_table(157) := '7078202365303036303620696E7365742C2030203020317078203270782072676261283232342C20362C20362C20302E3235292021696D706F7274616E743B0A7D0A2E742D427574746F6E3A616374697665207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(158) := '6C6F723A20236465646564653B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820327078207267626128302C20302C20302C20302E32352920696E7365743B';
wwv_flow_api.g_varchar2_table(159) := '0A20207A2D696E6465783A203130303B0A7D0A2E742D427574746F6E3A6163746976653A666F637573207B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820';
wwv_flow_api.g_varchar2_table(160) := '327078207267626128302C20302C20302C20302E32352920696E7365742021696D706F7274616E743B0A7D0A2E742D427574746F6E2E69732D6163746976652C0A2E742D427574746F6E2E69732D6163746976653A6163746976652C0A2E742D4D656E75';
wwv_flow_api.g_varchar2_table(161) := '427574746F6E2E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0A2020636F6C6F723A20233338333833383B0A2020666F6E742D7765696768743A206E6F726D616C3B0A2020746578742D73686164';
wwv_flow_api.g_varchar2_table(162) := '6F773A206E6F6E653B0A20207A2D696E6465783A203130303B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820327078207267626128302C20302C20302C20';
wwv_flow_api.g_varchar2_table(163) := '302E32352920696E7365743B0A7D0A2E742D427574746F6E2E69732D64697361626C65642C0A2E742D427574746F6E2E69732D64697361626C65643A6163746976652C0A2E742D427574746F6E3A64697361626C6564207B0A20206F7061636974793A20';
wwv_flow_api.g_varchar2_table(164) := '2E353B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2E742D427574746F6E2D2D686F742C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742C0A626F6479';
wwv_flow_api.g_varchar2_table(165) := '20627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D617279207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A2020636F6C6F723A20236666666666663B0A202074657874';
wwv_flow_api.g_varchar2_table(166) := '2D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E31293B0A7D0A2E742D427574746F6E2D2D686F743A686F7665722C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D6275';
wwv_flow_api.g_varchar2_table(167) := '74746F6E2D2D686F743A686F7665722C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236639323032';
wwv_flow_api.g_varchar2_table(168) := '303B0A7D0A2E742D427574746F6E2D2D686F743A6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6163746976652C0A626F647920627574746F6E2E75692D73';
wwv_flow_api.g_varchar2_table(169) := '746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A6163746976652C0A2E742D427574746F6E2D2D686F742E69732D6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E';
wwv_flow_api.g_varchar2_table(170) := '75692D627574746F6E2D2D686F742E69732D6163746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D6163746976652C0A2E742D427574746F6E2D2D686F74';
wwv_flow_api.g_varchar2_table(171) := '2E742D4D656E75427574746F6E2E69732D6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D4D656E75427574746F6E2E69732D6163746976652C0A626F64';
wwv_flow_api.g_varchar2_table(172) := '7920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D4D656E75427574746F6E2E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236165303530353B0A';
wwv_flow_api.g_varchar2_table(173) := '7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C';
wwv_flow_api.g_varchar2_table(174) := '0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A203020302030203170782023653030363036';
wwv_flow_api.g_varchar2_table(175) := '20696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233930323332333B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E742D49636F6E2C0A626F';
wwv_flow_api.g_varchar2_table(176) := '6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C74';
wwv_flow_api.g_varchar2_table(177) := '2E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233930323332333B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A';
wwv_flow_api.g_varchar2_table(178) := '686F7665722C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F7665722C0A626F647920627574746F6E2E75692D73746174652D';
wwv_flow_api.g_varchar2_table(179) := '64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C0A626F6479202E75692D';
wwv_flow_api.g_varchar2_table(180) := '73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F72';
wwv_flow_api.g_varchar2_table(181) := '6974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75';
wwv_flow_api.g_varchar2_table(182) := '692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D';
wwv_flow_api.g_varchar2_table(183) := '427574746F6E2D2D73696D706C653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A20302030203020317078202365303036';
wwv_flow_api.g_varchar2_table(184) := '303620696E7365743B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F';
wwv_flow_api.g_varchar2_table(185) := '6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D7369';
wwv_flow_api.g_varchar2_table(186) := '6D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E';
wwv_flow_api.g_varchar2_table(187) := '75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D4275';
wwv_flow_api.g_varchar2_table(188) := '74746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75';
wwv_flow_api.g_varchar2_table(189) := '692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072';
wwv_flow_api.g_varchar2_table(190) := '696D6172792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A0A2E742D427574746F6E2D2D7072696D617279207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(191) := '3A20236663396339633B0A2020636F6C6F723A20233139303130313B0A7D0A2E742D427574746F6E2D2D7072696D6172793A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236665636563653B0A7D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(192) := '7072696D6172793A6163746976652C0A2E742D427574746F6E2D2D7072696D6172792E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236662366136613B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D42';
wwv_flow_api.g_varchar2_table(193) := '7574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202366633963396320696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A2023386235623562';
wwv_flow_api.g_varchar2_table(194) := '3B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233862356235623B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73';
wwv_flow_api.g_varchar2_table(195) := '696D706C653A686F7665722C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665207B';
wwv_flow_api.g_varchar2_table(196) := '0A20206261636B67726F756E642D636F6C6F723A20236663396339633B0A2020636F6C6F723A20233139303130313B0A2020626F782D736861646F773A20302030203020317078202366633963396320696E7365743B0A7D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(197) := '7072696D6172792E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(198) := '2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233139303130313B0A7D0A0A2E742D427574746F6E2D2D64616E676572207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(199) := '6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A7D0A2E742D427574746F6E2D2D64616E6765723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666323931643B0A7D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(200) := '2D2D64616E6765723A6163746976652C0A2E742D427574746F6E2D2D64616E6765722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236236303930303B0A7D0A2E742D427574746F6E2D2D64616E6765722E742D4275';
wwv_flow_api.g_varchar2_table(201) := '74746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202365393063303020696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233934323632303B';
wwv_flow_api.g_varchar2_table(202) := '0A7D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233934323632303B0A7D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D70';
wwv_flow_api.g_varchar2_table(203) := '6C653A686F7665722C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A616374697665207B0A20206261';
wwv_flow_api.g_varchar2_table(204) := '636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A2020626F782D736861646F773A20302030203020317078202365393063303020696E7365743B0A7D0A2E742D427574746F6E2D2D64616E6765';
wwv_flow_api.g_varchar2_table(205) := '722E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D64616E6765';
wwv_flow_api.g_varchar2_table(206) := '722E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236666656165393B0A7D0A0A2E742D427574746F6E2D2D7761726E696E67207B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(207) := '66636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D427574746F6E2D2D7761726E696E673A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E742D427574746F6E2D2D7761726E';
wwv_flow_api.g_varchar2_table(208) := '696E673A6163746976652C0A2E742D427574746F6E2D2D7761726E696E672E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236363613330303B0A7D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F';
wwv_flow_api.g_varchar2_table(209) := '6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233863373330643B0A7D0A';
wwv_flow_api.g_varchar2_table(210) := '2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233863373330643B0A7D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(211) := '653A686F7665722C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A616374697665207B0A202062';
wwv_flow_api.g_varchar2_table(212) := '61636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0A7D0A2E742D427574746F6E2D2D7761726E';
wwv_flow_api.g_varchar2_table(213) := '696E672E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D7761';
wwv_flow_api.g_varchar2_table(214) := '726E696E672E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233030303030303B0A7D0A0A2E742D427574746F6E2D2D73756363657373207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(215) := '3A20233463643936343B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D427574746F6E2D2D737563636573733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233736653238383B0A7D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(216) := '737563636573733A6163746976652C0A2E742D427574746F6E2D2D737563636573732E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233261633834353B0A7D0A2E742D427574746F6E2D2D737563636573732E742D42';
wwv_flow_api.g_varchar2_table(217) := '7574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202334636439363420696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A2023333337393366';
wwv_flow_api.g_varchar2_table(218) := '3B0A7D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233333373933663B0A7D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73';
wwv_flow_api.g_varchar2_table(219) := '696D706C653A686F7665722C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A616374697665207B';
wwv_flow_api.g_varchar2_table(220) := '0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20233037316630623B0A2020626F782D736861646F773A20302030203020317078202334636439363420696E7365743B0A7D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(221) := '737563636573732E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(222) := '2D2D737563636573732E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D427574746F6E2D2D70696C6C5374617274207B0A2020626F726465722D746F702D';
wwv_flow_api.g_varchar2_table(223) := '72696768742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D70696C6C456E64207B0A2020626F72';
wwv_flow_api.g_varchar2_table(224) := '6465722D746F702D6C6566742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D70696C6C207B0A2020';
wwv_flow_api.g_varchar2_table(225) := '626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6869646553686F772E742D427574746F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D4865616465722D627261';
wwv_flow_api.g_varchar2_table(226) := '6E64696E67202E742D427574746F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572207B0A20207472616E736974696F6E3A206E6F6E65';
wwv_flow_api.g_varchar2_table(227) := '3B0A2020626F726465722D7261646975733A20303B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976653A666F637573207B0A';
wwv_flow_api.g_varchar2_table(228) := '2020626F782D736861646F773A20302030203020317078202366613339333920696E7365742C2030203020317078203270782072676261283235302C2035372C2035372C20302E3235292021696D706F7274616E743B0A7D0A2E742D427574746F6E2E74';
wwv_flow_api.g_varchar2_table(229) := '2D427574746F6E2D2D6865616465723A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A616374697665207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(230) := '726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31';
wwv_flow_api.g_varchar2_table(231) := '293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976652C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A616374697665207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(232) := '3A207267626128302C20302C20302C20302E34293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E32';
wwv_flow_api.g_varchar2_table(233) := '35293B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A6265666F7265207B0A2020636F6E74656E743A2027273B0A2020';
wwv_flow_api.g_varchar2_table(234) := '706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A2020626F74746F6D3A20303B0A202072696768743A20303B0A202077696474683A203170783B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20';
wwv_flow_api.g_varchar2_table(235) := '302C20302E31293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265652E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A207472616E7370617265';
wwv_flow_api.g_varchar2_table(236) := '6E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D6865';
wwv_flow_api.g_varchar2_table(237) := '61646572547265653A666F6375733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E33293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E';
wwv_flow_api.g_varchar2_table(238) := '2D2D6865616465725269676874207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768743A686F7665';
wwv_flow_api.g_varchar2_table(239) := '72207B0A20206261636B67726F756E642D636F6C6F723A20236432643264323B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768743A6163746976652C0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(240) := '6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D427574746F6E2D2D6E6176426172202E742D427574746F6E';
wwv_flow_api.g_varchar2_table(241) := '2D6261646765207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3335293B0A7D0A2E742D427574746F6E2D2D68656C70427574746F6E202E612D49';
wwv_flow_api.g_varchar2_table(242) := '636F6E207B0A20206F7061636974793A202E353B0A7D0A2E612D43616C656E6461722D627574746F6E207B0A2020626F726465722D7261646975733A203270783B0A2020636F6C6F723A20233730373037303B0A7D0A0A2E742D427574746F6E2D2D6E6F';
wwv_flow_api.g_varchar2_table(243) := '5549207B0A2020636F6C6F723A20233338333833383B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279207B0A2020636F6C6F723A20233862356235622021696D706F7274616E743B0A7D0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(244) := '6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279202E742D49636F6E207B0A2020636F6C6F723A20236663396339632021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67';
wwv_flow_api.g_varchar2_table(245) := '207B0A2020636F6C6F723A20233863373330642021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67202E742D49636F6E207B0A2020636F6C6F723A20236666636330302021696D706F';
wwv_flow_api.g_varchar2_table(246) := '7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E676572207B0A2020636F6C6F723A20233831313330642021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(247) := '2D64616E676572202E742D49636F6E207B0A2020636F6C6F723A20236539306330302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373207B0A2020636F6C6F723A20233333373933';
wwv_flow_api.g_varchar2_table(248) := '662021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373202E742D49636F6E207B0A2020636F6C6F723A20233463643936342021696D706F7274616E743B0A7D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(249) := '2D2D6E6F55492E742D427574746F6E2D2D686F74207B0A2020636F6C6F723A20233764313031302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74202E742D49636F6E207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(250) := '723A20236530303630362021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D6172792C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E672C0A2E742D4275';
wwv_flow_api.g_varchar2_table(251) := '74746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E6765722C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D737563636573732C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74207B0A2020626F';
wwv_flow_api.g_varchar2_table(252) := '782D736861646F773A206E6F6E653B0A7D0A0A2E742D427574746F6E526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A2020626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(253) := '203270783B0A7D0A2E742D427574746F6E526567696F6E2D2D6E6F5549207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E526567696F6E2D2D77697A6172642C0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(254) := '6E526567696F6E2D2D6469616C6F67526567696F6E207B0A2020626F726465722D7261646975733A2030203020327078203270783B0A7D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(255) := '2D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F6479202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20233339333933393B0A';
wwv_flow_api.g_varchar2_table(256) := '7D0A2E742D426F64792D7469746C65202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D696E666F20';
wwv_flow_api.g_varchar2_table(257) := '2E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E742D427574746F6E526567696F6E2D2D7368';
wwv_flow_api.g_varchar2_table(258) := '6F775469746C65202E742D427574746F6E526567696F6E2D7469746C652C0A2E742D427574746F6E526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020';
wwv_flow_api.g_varchar2_table(259) := '636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D616374696F6E73202E742D427574746F6E526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D726164697573';
wwv_flow_api.g_varchar2_table(260) := '3A20303B0A7D0A0A2E66632D746F6F6C626172207B0A2020626F726465722D636F6C6F723A20236562656265623B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A2032707820327078';
wwv_flow_api.g_varchar2_table(261) := '203020303B0A7D0A2E66632D746F6F6C6261722068322C0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0A2E6663202E66632D6461792D6E756D626572207B0A2020636F6C6F723A20233430343034303B0A';
wwv_flow_api.g_varchar2_table(262) := '7D0A2E66632D6461792D6865616465722E75692D7769646765742D6865616465722C0A2E66632D76696577202E75692D7769646765742D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236566656665663B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(263) := '3A20233364336433643B0A2020626F726465722D636F6C6F723A20236532653265323B0A7D0A6469762E66632D6167656E64614C697374207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(264) := '723A20236562656265623B0A2020636F6C6F723A20233430343034303B0A7D0A2E6663202E66632D6167656E64614C6973742D646179486561646572207B0A20206261636B67726F756E642D636F6C6F723A20236436643664363B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(265) := '20233364336433643B0A2020626F726465722D636F6C6F723A20236661666166613B0A7D0A2E6663202E66632D6167656E64614C6973742D646179207B0A2020636F6C6F723A20233364336433643B0A7D0A2E6663202E66632D6167656E64614C697374';
wwv_flow_api.g_varchar2_table(266) := '2D64617465207B0A2020636F6C6F723A20233633363336333B0A7D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D73746172742D74696D652C0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D616C';
wwv_flow_api.g_varchar2_table(267) := '6C2D646179207B0A2020636F6C6F723A20233636363636363B0A7D0A626F6479202E66632074642E66632D746F6461792C0A626F6479202E6663202E75692D7769646765742D636F6E74656E74207B0A2020626F726465722D636F6C6F723A2023653665';
wwv_flow_api.g_varchar2_table(268) := '3665363B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D7769646765742D636F6E74656E742E66632D746F6461792E75692D73746174652D686967686C69676874207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(269) := '6632663266323B0A7D0A2E6663202E66632D6167656E64614C6973742D6974656D207B0A2020626F726465722D636F6C6F723A20236661666166613B0A7D0A0A2E742D436172642D77726170207B0A2020626F726465722D7261646975733A203270783B';
wwv_flow_api.g_varchar2_table(270) := '0A7D0A2E742D436172642D777261703A666F637573207B0A2020626F726465722D636F6C6F723A20236530303630363B0A7D0A2E742D436172642D69636F6E202E742D49636F6E207B0A2020636F6C6F723A20234646463B0A7D0A2E742D436172642D64';
wwv_flow_api.g_varchar2_table(271) := '657363207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D43617264732D2D636F6D70616374202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D';
wwv_flow_api.g_varchar2_table(272) := '636F6D70616374202E742D436172642D64657363207B0A2020636F6C6F723A20233633363336333B0A7D0A2E742D436172642D696E666F207B0A2020636F6C6F723A20233633363336333B0A7D0A2E742D436172642D7469746C65207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(273) := '723A20233364336433643B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D777261702C0A2E742D436172642D2D6261736963202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(274) := '3A20236663666366633B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D69636F6E202E742D49636F6E2C0A2E742D436172642D2D6261736963202E742D436172642D69636F6E202E742D49636F6E207B0A202062';
wwv_flow_api.g_varchar2_table(275) := '6F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D7469746C65577261702C0A2E742D43617264';
wwv_flow_api.g_varchar2_table(276) := '2D2D6261736963202E742D436172642D7469746C6557726170207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D777261702C0A';
wwv_flow_api.g_varchar2_table(277) := '2E742D436172642D2D6665617475726564202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D69';
wwv_flow_api.g_varchar2_table(278) := '636F6E202E742D49636F6E2C0A2E742D436172642D2D6665617475726564202E742D436172642D69636F6E202E742D49636F6E207B0A2020626F726465722D7261646975733A2031303070783B0A2020636F6C6F723A20234646463B0A20206261636B67';
wwv_flow_api.g_varchar2_table(279) := '726F756E642D636F6C6F723A20234130413041303B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D626F64792C0A2E742D436172642D2D6665617475726564202E742D436172642D626F6479207B0A2020';
wwv_flow_api.g_varchar2_table(280) := '6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A0A2E742D436C617373696343616C656E6461722D6D6F6E74685469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436C617373696343616C65';
wwv_flow_api.g_varchar2_table(281) := '6E6461722D646179436F6C756D6E207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020766572746963616C2D616C69676E3A20746F703B0A2020626F726465722D636F6C6F723A20236632663266323B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(282) := '723A20233636363636363B0A7D0A2E742D436C617373696343616C656E6461722D646179207B0A2020626F726465722D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D696E616374697665';
wwv_flow_api.g_varchar2_table(283) := '202E742D436C617373696343616C656E6461722D64617465207B0A20206F7061636974793A202E353B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D7765656B656E642C0A2E742D436C617373696343616C656E6461722D6461';
wwv_flow_api.g_varchar2_table(284) := '792E69732D696E616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D746F646179202E742D436C617373696343616C656E6461722D6461';
wwv_flow_api.g_varchar2_table(285) := '7465207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436C617373696343616C656E6461722D64617465207B0A2020636F6C6F723A20233830383038303B0A7D0A';
wwv_flow_api.g_varchar2_table(286) := '2E742D436C617373696343616C656E6461722D6576656E74207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6576656E74207B0A2020636F6C6F723A20233430343034';
wwv_flow_api.g_varchar2_table(287) := '303B0A7D0A2E742D436C617373696343616C656E6461722D6576656E742061207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436C617373696343616C656E6461';
wwv_flow_api.g_varchar2_table(288) := '722D2D7765656B6C79202E742D436C617373696343616C656E6461722D74696D65436F6C2C0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D74696D65436F6C207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(289) := '726F756E642D636F6C6F723A20236661666166613B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E74732C0A2E742D436C617373696343616C656E6461722D';
wwv_flow_api.g_varchar2_table(290) := '2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E7473207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E';
wwv_flow_api.g_varchar2_table(291) := '6461722D6461794576656E747320612C0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E74732061207B0A20206261636B67726F756E642D636F6C6F723A2023653030';
wwv_flow_api.g_varchar2_table(292) := '3630363B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461792E69732D746F6461792C0A2E742D436C617373696343616C656E';
wwv_flow_api.g_varchar2_table(293) := '6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461792E69732D746F646179207B0A20206261636B67726F756E642D636F6C6F723A20236665653765373B0A7D0A2E742D436C617373696343616C656E6461722D6C69737420';
wwv_flow_api.g_varchar2_table(294) := '7B0A2020626F726465722D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6C6973745469746C652C0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(295) := '6F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6C6973745469746C65207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020636F6C6F723A20233636363636363B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(296) := '436C617373696343616C656E6461722D6C6973744576656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6D6D656E74732D7573657249636F6E2C0A2E742D436F6D6D656E74732D75736572496D67207B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(297) := '2D7261646975733A20313030253B0A7D0A2E742D436F6D6D656E74732D7573657249636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D436F6D6D656E74732D696E666F207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(298) := '3636363636363B0A7D0A2E742D436F6D6D656E74732D636F6D6D656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(299) := '642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A2032707820327078203020303B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D';
wwv_flow_api.g_varchar2_table(300) := '656E74732D696E666F3A6166746572207B0A2020626F726465722D636F6C6F723A2072676261283234382C203234382C203234382C2030293B0A2020626F726465722D72696768742D636F6C6F723A20236666666666663B0A7D0A2E742D436F6D6D656E';
wwv_flow_api.g_varchar2_table(301) := '74732D2D63686174202E742D436F6D6D656E74732D696E666F3A6265666F7265207B0A2020626F726465722D636F6C6F723A2072676261283233322C203233322C203233322C2030293B0A2020626F726465722D72696768742D636F6C6F723A20236536';
wwv_flow_api.g_varchar2_table(302) := '653665363B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E74207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A20302030203270';
wwv_flow_api.g_varchar2_table(303) := '78203270783B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D436F6E66696750616E656C2D61626F7574207B0A20206261636B67726F756E642D636F6C6F723A20236666663765303B0A2020636F6C6F723A202335363536';
wwv_flow_api.g_varchar2_table(304) := '35363B0A7D0A2E742D436F6E66696750616E656C2D69636F6E207B0A2020626F726465722D7261646975733A20313030253B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A2020636F6C6F723A20234646463B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(305) := '436F6E66696750616E656C2D69636F6E2E69732D656E61626C6564207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D64697361626C6564207B0A2020626163';
wwv_flow_api.g_varchar2_table(306) := '6B67726F756E642D636F6C6F723A20236539306330303B0A7D0A2E742D436F6E66696750616E656C2D73657474696E672C0A2E742D436F6E66696750616E656C2D737461747573207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D436F6E';
wwv_flow_api.g_varchar2_table(307) := '66696750616E656C2D737461747573207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6E66696750616E656C2D617474724C696E6B207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D436F6E66696750616E656C2D61';
wwv_flow_api.g_varchar2_table(308) := '7474724C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E742D436F6E66696750616E656C2D6174747256616C7565207B0A2020636F6C6F723A202366613061';
wwv_flow_api.g_varchar2_table(309) := '30613B0A7D0A0A2E742D4469616C6F67526567696F6E2D626F6479207B0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E742823666666666666203330252C2023666666666666292C202D7765626B69742D6C';
wwv_flow_api.g_varchar2_table(310) := '696E6561722D6772616469656E7428236666666666662C20236666666666662037302529203020313030252C202D7765626B69742D6C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C';
wwv_flow_api.g_varchar2_table(311) := '20302C203029292C202D7765626B69742D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E303529293B0A20206261636B67726F756E643A202D6F2D6C696E6561722D677261';
wwv_flow_api.g_varchar2_table(312) := '6469656E742823666666666666203330252C2023666666666666292C202D6F2D6C696E6561722D6772616469656E7428236666666666662C20236666666666662037302529203020313030252C202D6F2D6C696E6561722D6772616469656E7428726762';
wwv_flow_api.g_varchar2_table(313) := '6128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C202D6F2D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E303529293B0A20206261';
wwv_flow_api.g_varchar2_table(314) := '636B67726F756E643A206C696E6561722D6772616469656E742823666666666666203330252C2023666666666666292C206C696E6561722D6772616469656E7428236666666666662C20236666666666662037302529203020313030252C206C696E6561';
wwv_flow_api.g_varchar2_table(315) := '722D6772616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C2030';
wwv_flow_api.g_varchar2_table(316) := '2E30352929203020313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A0A2E742D466F6F7465722C0A2E742D466F6F7465722061207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D466F726D2D69';
wwv_flow_api.g_varchar2_table(317) := '6E707574436F6E7461696E65723A6265666F7265207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D6669656C642C0A2E742D466F726D2D73656C6563742C0A2E742D466F726D2D696E707574436F6E7461696E657220696E70';
wwv_flow_api.g_varchar2_table(318) := '75745B747970653D2274657874225D2C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F2C0A2E742D';
wwv_flow_api.g_varchar2_table(319) := '466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C642C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72642C0A2E742D466F726D2D696E707574436F6E7461696E657220';
wwv_flow_api.g_varchar2_table(320) := '74657874617265612E74657874617265612C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65722C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C79';
wwv_flow_api.g_varchar2_table(321) := '2C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F762C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D2C0A2E742D466F726D2D74657874617265612C';
wwv_flow_api.g_varchar2_table(322) := '0A2E752D54462D6974656D2D2D746578742C0A2E752D54462D6974656D2D2D74657874617265612C0A2E752D54462D6974656D2D2D646174657069636B65722C0A2E752D54462D6974656D2D2D73656C656374207B0A2020626F726465722D7261646975';
wwv_flow_api.g_varchar2_table(323) := '733A203270783B0A2020636F6C6F723A20233333333333333B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020626F726465722D636F6C6F723A20236439643964393B0A7D0A2E742D466F726D2D6669656C643A666F6375';
wwv_flow_api.g_varchar2_table(324) := '732C0A2E742D466F726D2D73656C6563743A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C';
wwv_flow_api.g_varchar2_table(325) := '6563742E73656C6563746C6973743A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F';
wwv_flow_api.g_varchar2_table(326) := '6669656C643A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A66';
wwv_flow_api.g_varchar2_table(327) := '6F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A666F6375732C';
wwv_flow_api.g_varchar2_table(328) := '0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A666F6375732C0A2E742D466F72';
wwv_flow_api.g_varchar2_table(329) := '6D2D74657874617265613A666F6375732C0A2E752D54462D6974656D2D2D746578743A666F6375732C0A2E752D54462D6974656D2D2D74657874617265613A666F6375732C0A2E752D54462D6974656D2D2D646174657069636B65723A666F6375732C0A';
wwv_flow_api.g_varchar2_table(330) := '2E752D54462D6974656D2D2D73656C6563743A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0A2020626F726465722D636F6C6F723A20236530303630362021696D706F7274616E';
wwv_flow_api.g_varchar2_table(331) := '743B0A7D0A2E742D466F726D2D6669656C643A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D73656C6563743A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B74';
wwv_flow_api.g_varchar2_table(332) := '7970653D2274657874225D3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973743A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E70';
wwv_flow_api.g_varchar2_table(333) := '7574436F6E7461696E65722073656C6563742E7965735F6E6F3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A666F6375733A3A2D6D732D76616C7565';
wwv_flow_api.g_varchar2_table(334) := '2C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A66';
wwv_flow_api.g_varchar2_table(335) := '6F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E6572207370';
wwv_flow_api.g_varchar2_table(336) := '616E2E646973706C61795F6F6E6C793A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D69';
wwv_flow_api.g_varchar2_table(337) := '6E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D74657874';
wwv_flow_api.g_varchar2_table(338) := '3A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0A2E';
wwv_flow_api.g_varchar2_table(339) := '752D54462D6974656D2D2D73656C6563743A666F6375733A3A2D6D732D76616C7565207B0A2020636F6C6F723A20233333333333333B0A20200A7D0A2E742D466F726D2D6669656C643A686F7665722C0A2E742D466F726D2D73656C6563743A686F7665';
wwv_flow_api.g_varchar2_table(340) := '722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973743A686F7665722C0A';
wwv_flow_api.g_varchar2_table(341) := '2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A686F7665722C0A2E742D466F726D2D69';
wwv_flow_api.g_varchar2_table(342) := '6E707574436F6E7461696E657220696E7075742E70617373776F72643A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A686F7665722C0A2E742D466F726D2D696E707574436F6E';
wwv_flow_api.g_varchar2_table(343) := '7461696E657220696E7075742E646174657069636B65723A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65';
wwv_flow_api.g_varchar2_table(344) := '7220696E7075742E706F7075705F6C6F763A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A686F7665722C0A2E742D466F726D2D74657874617265613A686F7665722C0A2E752D54';
wwv_flow_api.g_varchar2_table(345) := '462D6974656D2D2D746578743A686F7665722C0A2E752D54462D6974656D2D2D74657874617265613A686F7665722C0A2E752D54462D6974656D2D2D646174657069636B65723A686F7665722C0A2E752D54462D6974656D2D2D73656C6563743A686F76';
wwv_flow_api.g_varchar2_table(346) := '6572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D7765626B69742D696E7075742D706C616365686F6C646572207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(347) := '723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D6D6F7A2D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F';
wwv_flow_api.g_varchar2_table(348) := '7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A2D6D732D696E7075742D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E3535';
wwv_flow_api.g_varchar2_table(349) := '3B0A7D0A2E742D466F726D20696E7075742E66696C65207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C79207B0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(350) := '6F723A207472616E73706172656E743B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D466F726D2D73656C6563742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7365';
wwv_flow_api.g_varchar2_table(351) := '6C6563746C6973742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D6669656C642D2D726561644F6E6C79207B0A2020626163';
wwv_flow_api.g_varchar2_table(352) := '6B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D466F726D2D726164696F4C6162656C2C0A2E742D466F726D2D696E707574436F6E7461696E6572202E726164696F5F67726F7570206C6162656C2C0A2E742D466F726D';
wwv_flow_api.g_varchar2_table(353) := '2D636865636B626F784C6162656C2C0A2E742D466F726D2D696E707574436F6E7461696E6572202E636865636B626F785F67726F7570206C6162656C2C0A2E742D466F726D2D6C6162656C207B0A2020636F6C6F723A20233464346434643B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(354) := '2D466F726D2D6572726F72207B0A2020636F6C6F723A20234539323032303B0A7D0A2E742D466F726D2D706F737454657874207B0A2020636F6C6F723A20236363636363633B0A7D0A2E742D466F726D2D2D73656172636820696E7075742E742D466F72';
wwv_flow_api.g_varchar2_table(355) := '6D2D7365617263684669656C64207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D';
wwv_flow_api.g_varchar2_table(356) := '2E742D466F726D2D7365617263684669656C64207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E70';
wwv_flow_api.g_varchar2_table(357) := '75745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0A2020626F726465722D636F6C6F723A20236530';
wwv_flow_api.g_varchar2_table(358) := '303630362021696D706F7274616E743B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A3A2D7765626B69742D696E7075742D706C616365686F6C646572';
wwv_flow_api.g_varchar2_table(359) := '207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A3A2D6D6F7A2D';
wwv_flow_api.g_varchar2_table(360) := '706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D73656172636846';
wwv_flow_api.g_varchar2_table(361) := '69656C643A2D6D732D696E7075742D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E686173446174';
wwv_flow_api.g_varchar2_table(362) := '657069636B65722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0A2020626F726465722D746F702D72696768742D7261646975733A20303B0A2020626F726465722D626F74746F6D2D72696768';
wwv_flow_api.g_varchar2_table(363) := '742D7261646975733A20303B0A7D0A2E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0A2020626F726465722D746F702D6C6566742D726164697573';
wwv_flow_api.g_varchar2_table(364) := '3A20303B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A2032';
wwv_flow_api.g_varchar2_table(365) := '70783B0A7D0A0A2E742D4865616465722D6272616E64696E67207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B2C0A2E742D486561646572202E742D427574746F6E2E';
wwv_flow_api.g_varchar2_table(366) := '742D427574746F6E2D2D6865616465722E69732D6163746976652C0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572207B0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(367) := '3B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B3A686F7665722C0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D6163746976653A686F7665722C0A2E742D486561646572202E742D4275';
wwv_flow_api.g_varchar2_table(368) := '74746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D6865616465723A686F766572207B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B3A666F6375732C';
wwv_flow_api.g_varchar2_table(369) := '0A2E742D4865616465722D6C6F676F2D6C696E6B3A6163746976653A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202366613339333920696E7365742C203020302031707820';
wwv_flow_api.g_varchar2_table(370) := '3270782072676261283235302C2035372C2035372C20302E3235292021696D706F7274616E743B0A7D0A2E742D4865616465722D6E6176207B0A20206261636B67726F756E642D636F6C6F723A20233935303430343B0A7D0A2E742D486561646572202E';
wwv_flow_api.g_varchar2_table(371) := '612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E';
wwv_flow_api.g_varchar2_table(372) := '75436F6C202E612D49636F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D486561646572202E612D4D656E752E612D4D656E752D2D746F70203E202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D74';
wwv_flow_api.g_varchar2_table(373) := '6F702D77696474683A20303B0A7D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0A2020626F782D736861646F773A20302032707820367078207267626128302C20302C20302C20302E3135293B0A7D0A2E742D4865616465722D';
wwv_flow_api.g_varchar2_table(374) := '6E61762D6C697374207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D4865726F526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(375) := '233430343034303B0A7D0A2E742D4865726F526567696F6E2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4865726F526567696F6E2D69636F6E207B0A2020626F726465722D7261646975733A203470783B0A20206261';
wwv_flow_api.g_varchar2_table(376) := '636B67726F756E642D636F6C6F723A20236530303630363B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D4865726F526567696F6E2D2D6665617475726564207B0A20206261636B67726F756E642D636F6C6F723A207472616E7370617265';
wwv_flow_api.g_varchar2_table(377) := '6E743B0A7D0A2E742D4865726F526567696F6E2D2D66656174757265642C0A2E742D4865726F526567696F6E2D2D6665617475726564202E742D4865726F526567696F6E2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A0A2E61';
wwv_flow_api.g_varchar2_table(378) := '2D495252207B0A2020626F726465722D7261646975733A203270783B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C6162656C207B0A2020636F6C6F723A202337';
wwv_flow_api.g_varchar2_table(379) := '33373337333B0A7D0A2E612D4952522D7265706F727453756D6D6172792D76616C7565207B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D4952522D636F6E74726F6C73436F6E7461696E6572207B0A2020626F726465722D746F702D636F';
wwv_flow_api.g_varchar2_table(380) := '6C6F723A20236635663566353B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A7D0A2E612D4952522D66756C6C56696577207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E612D495252';
wwv_flow_api.g_varchar2_table(381) := '2D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E612D4952522D736F7274576964676574207B0A2020626F782D736861646F77';
wwv_flow_api.g_varchar2_table(382) := '3A20302032707820347078207267626128302C20302C20302C20302E31293B0A7D0A2E612D4952522D746F6F6C626172207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428236666666666662C2023666366636663293B0A';
wwv_flow_api.g_varchar2_table(383) := '2020626F726465722D636F6C6F723A20236532653265323B0A7D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A7D0A2E612D5265706F72742D7065';
wwv_flow_api.g_varchar2_table(384) := '7263656E744368617274207B0A20206261636B67726F756E642D636F6C6F723A20236665653765373B0A7D0A2E612D4952522D627574746F6E2D2D636F6C536561726368207B0A20202D7765626B69742D626F726465722D746F702D72696768742D7261';
wwv_flow_api.g_varchar2_table(385) := '646975733A203070782021696D706F7274616E743B0A20202D7765626B69742D626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0A20202D6D6F7A2D626F726465722D7261646975732D746F70';
wwv_flow_api.g_varchar2_table(386) := '72696768743A20307078202021696D706F7274616E743B0A20202D6D6F7A2D626F726465722D7261646975732D626F74746F6D72696768743A203070782021696D706F7274616E743B0A2020626F726465722D746F702D72696768742D7261646975733A';
wwv_flow_api.g_varchar2_table(387) := '203070782021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0A7D0A2E612D4952522D69636F6E566965775461626C652C0A2E612D4952522D636861727456';
wwv_flow_api.g_varchar2_table(388) := '6965772C0A2E612D4952522D7069766F74566965772C0A2E612D4952522D67726F75704279566965772C0A2E612D4952522D64657461696C56696577207B0A2020626F726465722D746F702D636F6C6F723A20236635663566353B0A7D0A2E612D495252';
wwv_flow_api.g_varchar2_table(389) := '2D746F6F6C6261722D2D73696E676C65526F77207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0A7D0A2E612D4952522D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B';
wwv_flow_api.g_varchar2_table(390) := '0A2020626F726465722D746F703A2031707820736F6C696420236536653665363B0A2020626F782D736861646F773A20696E7365742031707820302030203020236536653665363B0A7D0A2E612D4952522D6865616465723A686F766572207B0A202062';
wwv_flow_api.g_varchar2_table(391) := '61636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E612D4952522D6865616465722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233935303430343B0A2020626F726465722D626F74746F6D3A20';
wwv_flow_api.g_varchar2_table(392) := '6E6F6E653B0A7D0A2E612D4952522D6865616465722E69732D6163746976652061207B0A2020636F6C6F723A20236665653765373B0A7D0A2E612D4952522D6865616465722E69732D616374697665202E612D4952522D686561646572536F7274207B0A';
wwv_flow_api.g_varchar2_table(393) := '2020636F6C6F723A20236665653765373B0A7D0A2E612D4952522D6865616465722D2D67726F7570207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E612D4952522D7461626C65207472207464207B0A2020626163';
wwv_flow_api.g_varchar2_table(394) := '6B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D4952522D7461626C65207B0A2020626F726465722D636F6C6C617073653A2073657061726174653B0A7D0A2E612D4952522D746162';
wwv_flow_api.g_varchar2_table(395) := '6C652074723A686F766572207464207B0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0A7D0A2E742D4952522D726567696F6E2D2D6E6F426F7264657273202E612D495252207B0A2020626F726465722D7261646975733A2032';
wwv_flow_api.g_varchar2_table(396) := '70783B0A7D0A626F6479202E612D4952522D736F72745769646765742D726F7773207B0A2020636F6C6F723A20236666666666663B0A2020626F726465722D746F703A2031707820736F6C696420233935303430343B0A20206261636B67726F756E643A';
wwv_flow_api.g_varchar2_table(397) := '20236337303530353B0A7D0A626F6479202E612D4952522D736F72745769646765742D726F77207B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A2030202D3170782030202339353034303420696E7365743B0A7D0A2E';
wwv_flow_api.g_varchar2_table(398) := '612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C642C0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765';
wwv_flow_api.g_varchar2_table(399) := '742D7365617263684669656C645B747970653D2274657874225D207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E643A20233935303430343B0A7D0A2E612D4952522D736F72745769646765742D726F773A686F76657220';
wwv_flow_api.g_varchar2_table(400) := '7B0A20206261636B67726F756E642D636F6C6F723A20233935303430343B0A7D0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E2C0A626F6479202E612D4952522D627574746F6E2E612D4952';
wwv_flow_api.g_varchar2_table(401) := '522D736F72745769646765742D627574746F6E3A6163746976653A666F637573207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E39293B0A20206261636B67726F756E642D636F6C6F723A20233935303430343B0A7D';
wwv_flow_api.g_varchar2_table(402) := '0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A686F7665722C0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A616374697665';
wwv_flow_api.g_varchar2_table(403) := '3A666F6375733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236337303530353B0A7D0A2E612D4952522D736F72745769646765742D616374696F6E73207B0A2020626F726465722D626F74746F6D3A2031707820736F6C6964';
wwv_flow_api.g_varchar2_table(404) := '20233935303430343B0A7D0A2E612D4952522D736F72745769646765742D616374696F6E732D6974656D207B0A2020626F726465722D72696768743A206E6F6E653B0A7D0A2E612D4952522D736F7274576964676574207B0A2020626F726465723A206E';
wwv_flow_api.g_varchar2_table(405) := '6F6E653B0A7D0A2E612D4952522D7461626C65207464207B0A2020626F726465722D6C6566743A2031707820736F6C696420236632663266323B0A2020626F726465722D746F703A2031707820736F6C696420236632663266323B0A7D0A2E612D495252';
wwv_flow_api.g_varchar2_table(406) := '2D736F72745769646765742D7365617263684C6162656C207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E39293B0A7D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F726520';
wwv_flow_api.g_varchar2_table(407) := '7B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0A7D0A2E612D4952522D6865616465724C696E6B3A666F637573207B0A2020626F782D736861646F773A20302030203020327078202365303036303620696E73';
wwv_flow_api.g_varchar2_table(408) := '65743B0A7D0A2E612D4952522D7365617263682D6669656C643A666F637573207B0A2020626F726465722D636F6C6F723A20236530303630363B0A2020626F782D736861646F773A20302030203020317078202365303036303620696E7365742C202D32';
wwv_flow_api.g_varchar2_table(409) := '707820302030202365303036303620696E7365742C2032707820302030202365303036303620696E7365742C203020302032707820302072676261283232342C20362C20362C20302E35293B0A7D0A2E612D4952522D73696E676C65526F772D6E616D65';
wwv_flow_api.g_varchar2_table(410) := '2C0A2E612D4952522D73696E676C65526F772D76616C7565207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D4952522D73696E676C65526F772D76616C75';
wwv_flow_api.g_varchar2_table(411) := '65207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D76616C7565207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(412) := '636F6C6F723A20236637663766373B0A7D0A2E612D4952522D73696E676C65526F772D6E616D65207B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E612D4952522D73696E676C65526F772D726F773A686F76657220';
wwv_flow_api.g_varchar2_table(413) := '2E612D4952522D73696E676C65526F772D6E616D65207B0A20206261636B67726F756E642D636F6C6F723A20236630663066303B0A7D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E3A686F76657220';
wwv_flow_api.g_varchar2_table(414) := '7B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A7D0A2E612D4952522D7265706F727453756D6D6172792D6C6162656C2C0A2E612D4952522D636F6E74726F6C734C6162656C207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(415) := '6F723A20236666666666663B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20373639707829207B0A20202E69732D6D6178696D697A65642E742D4952522D726567696F6E202E742D6668742D7468656164';
wwv_flow_api.g_varchar2_table(416) := '202E612D4952522D686561646572207B0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A20207D0A7D0A0A2E742D4C696E6B734C6973742D6974656D2C0A2E742D4C696E6B734C6973742D6C696E6B207B';
wwv_flow_api.g_varchar2_table(417) := '0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A20236439643964393B0A7D0A2E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0A20206261636B';
wwv_flow_api.g_varchar2_table(418) := '67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E742D4C696E6B734C6973742D6C696E6B3A666F637573207B0A2020626F782D736861646F773A20302030203020317078202365303036303620696E7365743B0A7D0A0A2E742D4C696E6B';
wwv_flow_api.g_varchar2_table(419) := '734C6973742D2D73686F774172726F77202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0A2020636F6C6F723A20236439643964393B0A7D0A0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973';
wwv_flow_api.g_varchar2_table(420) := '742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6C696E6B';
wwv_flow_api.g_varchar2_table(421) := '3A686F766572202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6974656D';
wwv_flow_api.g_varchar2_table(422) := '2E69732D657870616E646564203E202E742D4C696E6B734C6973742D6C696E6B202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0A7D0A0A2E742D4C696E6B734C6973742D2D';
wwv_flow_api.g_varchar2_table(423) := '627269676874486F766572202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0A2020636F6C6F723A2072676261283235352C203235352C2032';
wwv_flow_api.g_varchar2_table(424) := '35352C20302E35293B0A7D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(425) := '3A20236666666666663B0A7D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A207267626128323535';
wwv_flow_api.g_varchar2_table(426) := '2C203235352C203235352C20302E3735293B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20234643464346433B0A20206261636B67726F756E643A206C696E65';
wwv_flow_api.g_varchar2_table(427) := '61722D6772616469656E74287267626128302C20302C20302C20302E303135292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C';
wwv_flow_api.g_varchar2_table(428) := '20302E30313529293B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0A2020636F6C6F723A20236530303630363B0A7D0A2E742D4C69';
wwv_flow_api.g_varchar2_table(429) := '6E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0A2020636F6C6F723A207267626128302C20302C20302C20302E3235293B0A7D0A2E742D4C696E6B734C6973742D2D7368';
wwv_flow_api.g_varchar2_table(430) := '6F774261646765202E742D4C696E6B734C6973742D6261646765207B0A2020626F726465722D7261646975733A203470783B0A7D0A2E742D4C696E6B734C6973742D2D69636F6E4F6E6C79202E742D4C696E6B734C6973742D69636F6E207B0A2020626F';
wwv_flow_api.g_varchar2_table(431) := '726465722D7261646975733A20313030253B0A7D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C6162656C207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D4C696E6B734C6973742D2D6163';
wwv_flow_api.g_varchar2_table(432) := '74696F6E73202E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B73';
wwv_flow_api.g_varchar2_table(433) := '4C6973742D69636F6E2C0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6C6162656C2C0A2E742D4C696E6B734C6973742D2D616374696F6E73202E';
wwv_flow_api.g_varchar2_table(434) := '742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0A2020636F6C6F723A20233339333933393B0A7D0A0A2E742D4C6F67696E2D69636F6E56616C69646174696F6E207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(435) := '756E643A20233463643936343B0A2020636F6C6F723A2077686974653B0A7D0A626F6479202E742D4C6F67696E2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4C6F67696E2D726567696F6E207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(436) := '6F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D4C6F67696E2D6C6F676F2E6661207B0A2020636F6C6F723A20236530303630363B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830';
wwv_flow_api.g_varchar2_table(437) := '707829207B0A20202E742D50616765426F64792D2D6C6F67696E2C0A20202E742D50616765426F64792D2D6C6F67696E202E742D426F6479207B0A202020206261636B67726F756E642D636F6C6F723A20236666666666663B0A20207D0A7D0A0A2E742D';
wwv_flow_api.g_varchar2_table(438) := '4D656469614C6973742D6974656D207B0A2020626F726465722D636F6C6F723A20236439643964393B0A7D0A2E742D4D656469614C6973742D2D686F72697A6F6E74616C202E742D4D656469614C6973742D6974656D207B0A2020626F726465722D7269';
wwv_flow_api.g_varchar2_table(439) := '6768743A2031707820736F6C696420236439643964393B0A7D0A0A612E742D4D656469614C6973742D6974656D57726170207B0A2020636F6C6F723A20236661306130613B0A7D0A612E742D4D656469614C6973742D6974656D577261703A686F766572';
wwv_flow_api.g_varchar2_table(440) := '207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A2020636F6C6F723A20236661306130613B0A7D0A612E742D4D656469614C6973742D6974656D577261703A666F637573207B0A2020626F782D736861646F773A20302030';
wwv_flow_api.g_varchar2_table(441) := '203020317078202365303036303620696E7365743B0A7D0A2E742D4D656469614C6973742D6974656D57726170207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4D656469614C6973742D62616467652C0A2E742D4D656469614C697374';
wwv_flow_api.g_varchar2_table(442) := '2D64657363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D4D656469614C6973742D69636F6E207B0A2020636F6C6F723A20236439643964393B0A7D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D';
wwv_flow_api.g_varchar2_table(443) := '6974656D3A6265666F72652C0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E612D4D656E754261722D';
wwv_flow_api.g_varchar2_table(444) := '6C6162656C207B0A2020636F6C6F723A20236666666666663B0A20206C696E652D6865696768743A20323070783B0A7D0A2E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C207B0A2020646973706C61793A2069';
wwv_flow_api.g_varchar2_table(445) := '6E6C696E652D626C6F636B3B0A202070616464696E673A2038707820303B0A2020766572746963616C2D616C69676E3A20746F703B0A20206D617267696E2D72696768743A203870783B0A20206D617267696E2D6C6566743A202D3470783B0A7D0A2E61';
wwv_flow_api.g_varchar2_table(446) := '2D4D656E754261722D6974656D207B0A20206261636B67726F756E643A20233764303330333B0A2020626F726465722D72696768743A2031707820736F6C696420236165303530353B0A2020626F726465722D6C6566743A2031707820736F6C69642023';
wwv_flow_api.g_varchar2_table(447) := '6165303530353B0A20206D617267696E2D6C6566743A202D3170783B0A7D0A2E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0A20206D617267696E2D6C6566743A20303B0A7D0A2E612D4D656E754261722D6974656D2E612D4D';
wwv_flow_api.g_varchar2_table(448) := '656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E754261722E752D72746C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C';
wwv_flow_api.g_varchar2_table(449) := '207B0A2020626F726465723A206E6F6E653B0A20206D617267696E2D72696768743A20303B0A202070616464696E673A203870782038707820387078203470783B0A7D0A2E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D';
wwv_flow_api.g_varchar2_table(450) := '656E754261722D6C6162656C207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0A7D0A2E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A2023616530';
wwv_flow_api.g_varchar2_table(451) := '3530353B0A7D0A2E612D4D656E754261722D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236165303530353B0A7D0A0A2E612D4D656E752D636F6E74656E74207B0A2020626F726465722D72616469';
wwv_flow_api.g_varchar2_table(452) := '75733A203270783B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233339333933393B0A7D0A2E612D4D656E752D6974656D536570202E612D4D656E752D68536570617261746F72207B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(453) := '636F6C6F723A20236466646664663B0A7D0A2E612D4D656E752D2D63757272656E74207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C6564';
wwv_flow_api.g_varchar2_table(454) := '2E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D69';
wwv_flow_api.g_varchar2_table(455) := '6E6E6572202E612D4D656E752D7375624D656E75436F6C207B0A2020636F6C6F723A20233339333933393B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(456) := '696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20233739373937393B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D65';
wwv_flow_api.g_varchar2_table(457) := '7870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233764303330333B0A2020636F6C6F723A20236666666666663B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E75';
wwv_flow_api.g_varchar2_table(458) := '2D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E612D4D656E';
wwv_flow_api.g_varchar2_table(459) := '75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D';
wwv_flow_api.g_varchar2_table(460) := '4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0A2E612D4D656E';
wwv_flow_api.g_varchar2_table(461) := '75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20236666666666663B0A7D0A2E612D4D656E75202E612D4D656E752D616363656C';
wwv_flow_api.g_varchar2_table(462) := '207B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E3735293B0A7D0A2E612D4D656E752D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A2072676261283234382C203234382C203234382C20302E3935';
wwv_flow_api.g_varchar2_table(463) := '293B0A2020626F726465722D636F6C6F723A20236466646664663B0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0A7D0A2E612D4D656E75426172207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(464) := '2D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D486561646572202E612D4D656E75426172207B0A20206261636B67726F756E642D636F6C6F723A20233764303330333B0A7D0A2E742D526567696F6E207B0A20200A7D0A2E742D526567';
wwv_flow_api.g_varchar2_table(465) := '696F6E202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233333333333333B0A20206C696E652D6865696768743A20323070783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(466) := '7375624D656E75436F6C207B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A202070616464696E673A2038707820303B0A2020766572746963616C2D616C69676E3A20746F703B0A20206D617267696E2D72696768743A203870783B0A';
wwv_flow_api.g_varchar2_table(467) := '20206D617267696E2D6C6566743A202D3470783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A20206261636B67726F756E643A20236632663266323B0A2020626F726465722D72696768743A2031707820736F6C696420';
wwv_flow_api.g_varchar2_table(468) := '236439643964393B0A2020626F726465722D6C6566743A2031707820736F6C696420236439643964393B0A20206D617267696E2D6C6566743A202D3170783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A66697273742D6368';
wwv_flow_api.g_varchar2_table(469) := '696C64207B0A20206D617267696E2D6C6566743A20303B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E61';
wwv_flow_api.g_varchar2_table(470) := '2D4D656E754261722E752D72746C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0A2020626F726465723A206E6F6E653B0A20206D617267696E2D72696768743A20';
wwv_flow_api.g_varchar2_table(471) := '303B0A202070616464696E673A203870782038707820387078203470783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A2072';
wwv_flow_api.g_varchar2_table(472) := '6762612835312C2035312C2035312C20302E35293B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0A7D0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(473) := '612D4D656E754261722D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D726164';
wwv_flow_api.g_varchar2_table(474) := '6975733A203270783B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D526567696F6E202E612D4D656E752D6974656D536570202E612D4D656E752D68';
wwv_flow_api.g_varchar2_table(475) := '536570617261746F72207B0A2020626F726465722D636F6C6F723A20236532653265323B0A7D0A2E742D526567696F6E202E612D4D656E752D2D63757272656E74207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0A7D0A2E';
wwv_flow_api.g_varchar2_table(476) := '742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D526567696F6E202E612D4D';
wwv_flow_api.g_varchar2_table(477) := '656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(478) := '526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20233763376337633B';
wwv_flow_api.g_varchar2_table(479) := '0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(480) := '756E642D636F6C6F723A20236632663266323B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E61';
wwv_flow_api.g_varchar2_table(481) := '2D4D656E752D737461747573436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E742D5265';
wwv_flow_api.g_varchar2_table(482) := '67696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D69';
wwv_flow_api.g_varchar2_table(483) := '74656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D';
wwv_flow_api.g_varchar2_table(484) := '656E752D696E6E6572202E612D4D656E752D616363656C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A';
wwv_flow_api.g_varchar2_table(485) := '2020636F6C6F723A20233333333333333B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D616363656C207B0A2020636F6C6F723A20726762612836312C2036312C2036312C20302E3735293B0A7D0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(486) := '612D4D656E752D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A2072676261283235322C203235322C203235322C20302E3935293B0A2020626F726465722D636F6C6F723A20236532653265323B0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(487) := '773A20302031707820327078207267626128302C20302C20302C20302E3035293B0A7D0A0A2E742D486561646572207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D486561646572202E612D4D656E754261722D6C6162656C207B0A2020';
wwv_flow_api.g_varchar2_table(488) := '636F6C6F723A20236666666666663B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D486561';
wwv_flow_api.g_varchar2_table(489) := '646572202E612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236337303530352021696D706F72';
wwv_flow_api.g_varchar2_table(490) := '74616E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375';
wwv_flow_api.g_varchar2_table(491) := '736564207B0A20206261636B67726F756E642D636F6C6F723A20236337303530352021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E75426172';
wwv_flow_api.g_varchar2_table(492) := '2D6C6162656C2C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20236666666666662021696D';
wwv_flow_api.g_varchar2_table(493) := '706F7274616E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D';
wwv_flow_api.g_varchar2_table(494) := '656E752D2D63757272656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236337303530352021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D';
wwv_flow_api.g_varchar2_table(495) := '4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E38293B0A2020626F726465722D636F6C6F723A20236530303630363B0A2020626F726465722D7261646975';
wwv_flow_api.g_varchar2_table(496) := '733A20313030253B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0A2E742D486561';
wwv_flow_api.g_varchar2_table(497) := '646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236639323032303B0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(498) := '3A20236639323032303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F';
wwv_flow_api.g_varchar2_table(499) := '6E207B0A2020636F6C6F723A20236661333933393B0A2020626F726465722D636F6C6F723A20236661333933393B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E64';
wwv_flow_api.g_varchar2_table(500) := '6564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233030';
wwv_flow_api.g_varchar2_table(501) := '376638303B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236663';
wwv_flow_api.g_varchar2_table(502) := '386438643B0A2020626F726465722D636F6C6F723A20236663386438643B0A2020636F6C6F723A20233634303330333B0A7D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A2020';
wwv_flow_api.g_varchar2_table(503) := '6261636B67726F756E642D636F6C6F723A20236337303530353B0A7D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D486561646572202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(504) := '616363656C207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D486561646572202E';
wwv_flow_api.g_varchar2_table(505) := '612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236165303530352021696D706F7274616E743B0A7D0A2E742D426F6479207B0A20200A20200A20200A20200A2020';
wwv_flow_api.g_varchar2_table(506) := '0A20200A7D0A2E742D426F6479202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233339333933393B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D20';
wwv_flow_api.g_varchar2_table(507) := '7B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D426F6479202E612D4D656E754261722D6974656D3A686F766572207B0A2020626163';
wwv_flow_api.g_varchar2_table(508) := '6B67726F756E642D636F6C6F723A20236466646664662021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D426F6479202E612D4D656E754261722D697465';
wwv_flow_api.g_varchar2_table(509) := '6D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236466646664662021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D';
wwv_flow_api.g_varchar2_table(510) := '656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B';
wwv_flow_api.g_varchar2_table(511) := '0A2020636F6C6F723A20233339333933392021696D706F7274616E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D426F6479202E61';
wwv_flow_api.g_varchar2_table(512) := '2D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236466646664662021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E';
wwv_flow_api.g_varchar2_table(513) := '754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E38293B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020';
wwv_flow_api.g_varchar2_table(514) := '626F726465722D7261646975733A20313030253B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D4963';
wwv_flow_api.g_varchar2_table(515) := '6F6E2C0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236238623862383B0A2020626F7264';
wwv_flow_api.g_varchar2_table(516) := '65722D636F6C6F723A20236238623862383B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C20';
wwv_flow_api.g_varchar2_table(517) := '2E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D6578';
wwv_flow_api.g_varchar2_table(518) := '70616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020626F726465722D636F6C6F723A20233339333933393B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(519) := '20236638663866383B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(520) := '6666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020636F6C6F723A20236466646664663B0A7D0A2E742D426F6479202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A2020';
wwv_flow_api.g_varchar2_table(521) := '6261636B67726F756E642D636F6C6F723A20236466646664663B0A7D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F6479202E612D4D656E752D61636365';
wwv_flow_api.g_varchar2_table(522) := '6C207B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E3735293B0A7D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D426F6479202E612D4D656E75202E612D4D';
wwv_flow_api.g_varchar2_table(523) := '656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236562656265622021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E75426172203E20756C207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(524) := '756E642D636F6C6F723A20236536653665363B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0A2020626F726465722D636F6C6F723A20236466646664663B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69';
wwv_flow_api.g_varchar2_table(525) := '732D666F6375736564207B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D526567696F6E207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(526) := '6F723A20233430343034303B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(527) := '202E612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E';
wwv_flow_api.g_varchar2_table(528) := '743B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564';
wwv_flow_api.g_varchar2_table(529) := '207B0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C61';
wwv_flow_api.g_varchar2_table(530) := '62656C2C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233430343034302021696D706F72';
wwv_flow_api.g_varchar2_table(531) := '74616E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E75';
wwv_flow_api.g_varchar2_table(532) := '2D2D63757272656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E';
wwv_flow_api.g_varchar2_table(533) := '752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E38293B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A20313030';
wwv_flow_api.g_varchar2_table(534) := '253B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0A2E742D526567696F6E202E61';
wwv_flow_api.g_varchar2_table(535) := '2D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0A2020626F726465722D636F6C6F723A2023626662';
wwv_flow_api.g_varchar2_table(536) := '6662663B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020';
wwv_flow_api.g_varchar2_table(537) := '636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E';
wwv_flow_api.g_varchar2_table(538) := '612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233430343034303B0A2020626F726465722D636F6C6F723A20233430343034303B0A2020636F6C6F723A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(539) := '7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(540) := '2020626F726465722D636F6C6F723A20236666666666663B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(541) := '6F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D4D656E752D616363656C20';
wwv_flow_api.g_varchar2_table(542) := '7B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E75202E61';
wwv_flow_api.g_varchar2_table(543) := '2D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E75426172203E20756C207B0A2020626163';
wwv_flow_api.g_varchar2_table(544) := '6B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E754261';
wwv_flow_api.g_varchar2_table(545) := '722D6974656D2E69732D666F6375736564207B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D77696474683A20303B0A2020';
wwv_flow_api.g_varchar2_table(546) := '6261636B67726F756E642D636F6C6F723A20236337303530353B0A7D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D4865616465722D757365724D656E75202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(547) := '6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236165303530352021696D706F7274616E743B0A7D0A2E742D4865616465722D757365724D656E752E612D4D656E75202E612D4D656E752D6974656D20';
wwv_flow_api.g_varchar2_table(548) := '2E612D4D656E752D6C6162656C207B0A2020636F6C6F723A20236666666666663B0A20202D7765626B69742D666F6E742D736D6F6F7468696E673A20616E7469616C69617365643B0A7D0A0A2E742D4E617669676174696F6E4261722D6D656E75202E61';
wwv_flow_api.g_varchar2_table(549) := '2D4D656E752D636F6E74656E74207B0A2020626F726465722D7261646975733A2030203020327078203270783B0A20206261636B67726F756E642D636F6C6F723A20233764303330333B0A2020626F726465722D77696474683A20303B0A7D0A2E742D4E';
wwv_flow_api.g_varchar2_table(550) := '617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(551) := '6F756E642D636F6C6F723A20236165303530352021696D706F7274616E743B0A7D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D6C6162656C2C0A2E742D';
wwv_flow_api.g_varchar2_table(552) := '4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D6C6162656C207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A2E742D4E617669';
wwv_flow_api.g_varchar2_table(553) := '676174696F6E4261722D6D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C2C0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D20612C0A2E742D4E617669676174696F';
wwv_flow_api.g_varchar2_table(554) := '6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D737461747573436F6C207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A0A2E742D506F7075704C4F562D6C696E6B7320';
wwv_flow_api.g_varchar2_table(555) := '613A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236661306130613B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D506F7075704C4F562D726573756C74735365742074723A686F766572207464207B0A20206261';
wwv_flow_api.g_varchar2_table(556) := '636B67726F756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0A7D0A2E742D506F7075704C4F562D726573756C74735365742074723A6E74682D6368696C6428326E29207464207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(557) := '723A20234641464146413B0A7D0A2E742D506F7075704C4F562D726573756C74735365742D6C696E6B2C0A2E75692D7769646765742D636F6E74656E7420612E742D506F7075704C4F562D726573756C74735365742D6C696E6B207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(558) := '3A20236661306130613B0A7D0A2E742D506167652D2D706F7075704C4F56207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D506F7075704C4F562D616374696F6E73207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(559) := '723A20236638663866383B0A7D0A2E742D426F6479202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D6C696E6B732061207B0A';
wwv_flow_api.g_varchar2_table(560) := '2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E742D506F7075704C4F562D6C696E';
wwv_flow_api.g_varchar2_table(561) := '6B7320612C0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(562) := '6F756E642D636F6C6F723A20236662336333633B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A20233739373937393B0A7D0A2E742D426F64';
wwv_flow_api.g_varchar2_table(563) := '792D7469746C65202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(564) := '233830383038303B0A7D0A2E742D526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E2C0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A202338303830';
wwv_flow_api.g_varchar2_table(565) := '38303B0A7D0A0A2E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E6669656C64646174612062207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F6479';
wwv_flow_api.g_varchar2_table(566) := '2D7469746C65202E6669656C64646174612062207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D696E666F202E6669656C64646174612062207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(567) := '2E6669656C646461746120622C0A2E742D427574746F6E526567696F6E202E6669656C64646174612062207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(568) := '6F723A20236663666366633B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236532653265323B0A7D0A2E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D6865616465';
wwv_flow_api.g_varchar2_table(569) := '72202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E643A207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(570) := '3B0A7D0A2E742D526567696F6E2D2D737461636B6564207B0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2D2D737461636B6564203E202E742D526567696F6E2D686561646572207B0A2020';
wwv_flow_api.g_varchar2_table(571) := '626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(572) := '0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A7D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D5265';
wwv_flow_api.g_varchar2_table(573) := '67696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E2D2D616363656E7431203E202E742D52656769';
wwv_flow_api.g_varchar2_table(574) := '6F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A20';
wwv_flow_api.g_varchar2_table(575) := '20626F726465722D626F74746F6D3A2031707820736F6C696420236666363037653B0A7D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(576) := '6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561';
wwv_flow_api.g_varchar2_table(577) := '646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F';
wwv_flow_api.g_varchar2_table(578) := '6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D6E6F426F72646572203E202E742D5265';
wwv_flow_api.g_varchar2_table(579) := '67696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420233333393566663B0A7D0A2E742D526567696F6E2D2D616363656E743220';
wwv_flow_api.g_varchar2_table(580) := '3E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D52656769';
wwv_flow_api.g_varchar2_table(581) := '6F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D6E6F426F7264';
wwv_flow_api.g_varchar2_table(582) := '6572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D6865616465722C0A2E';
wwv_flow_api.g_varchar2_table(583) := '742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A2020626F726465722D626F7474';
wwv_flow_api.g_varchar2_table(584) := '6F6D3A2031707820736F6C696420236666616133333B0A7D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74332E74';
wwv_flow_api.g_varchar2_table(585) := '2D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D427574746F';
wwv_flow_api.g_varchar2_table(586) := '6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(587) := '3B0A7D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D68656164657220';
wwv_flow_api.g_varchar2_table(588) := '7B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420233261633834353B0A7D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(589) := '686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E74';
wwv_flow_api.g_varchar2_table(590) := '2D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D52656769';
wwv_flow_api.g_varchar2_table(591) := '6F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D6163';
wwv_flow_api.g_varchar2_table(592) := '63656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A2020626F726465722D626F74746F6D3A2031707820736F6C69';
wwv_flow_api.g_varchar2_table(593) := '6420236138613861633B0A7D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F42';
wwv_flow_api.g_varchar2_table(594) := '6F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D';
wwv_flow_api.g_varchar2_table(595) := '526567696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(596) := '6E2D686561646572207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20302021696D706F7274616E743B0A7D0A';
wwv_flow_api.g_varchar2_table(597) := '2E742D526567696F6E2068322E742D526567696F6E2D7469746C65207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D526567696F6E2D626F6479207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E2D2D6869';
wwv_flow_api.g_varchar2_table(598) := '646553686F772E69732D636F6C6C6170736564207B0A2020626F726465722D626F74746F6D2D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D7363726F6C6C426F6479203E202E742D526567696F6E2D626F64795772';
wwv_flow_api.g_varchar2_table(599) := '6170203E202E742D526567696F6E2D626F6479207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666666666203330252C2072676261283235352C203235352C203235352C203029292C206C696E6561722D677261';
wwv_flow_api.g_varchar2_table(600) := '6469656E742872676261283235352C203235352C203235352C2030292C20236666666666662037302529203020313030252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303235292C207267626128302C20302C20';
wwv_flow_api.g_varchar2_table(601) := '302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E3032352929203020313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(602) := '0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B';
wwv_flow_api.g_varchar2_table(603) := '0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D73696465202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D52';
wwv_flow_api.g_varchar2_table(604) := '6567696F6E2C0A2E742D526567696F6E2D686561646572207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D526567696F6E2D2D6E6F4247207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B';
wwv_flow_api.g_varchar2_table(605) := '0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D62757474';
wwv_flow_api.g_varchar2_table(606) := '6F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B';
wwv_flow_api.g_varchar2_table(607) := '0A2020636F6C6F723A20234646463B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35';
wwv_flow_api.g_varchar2_table(608) := '293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A6163746976652C0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A6163746976653A666F63757320';
wwv_flow_api.g_varchar2_table(609) := '7B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D6E6578742D726567696F6E207B0A2020626F726465722D7261';
wwv_flow_api.g_varchar2_table(610) := '646975733A2032707820302030203270783B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D70726576696F75732D726567696F6E207B0A2020626F726465722D7261646975733A2030203270782032707820303B0A7D';
wwv_flow_api.g_varchar2_table(611) := '0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E617065782D7264732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(612) := '6E642D636F6C6F723A207267626128302C20302C20302C20302E3435293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E617065782D7264732D73656C6563746564202E612D';
wwv_flow_api.g_varchar2_table(613) := '526567696F6E2D6361726F7573656C4C696E6B3A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4C696E';
wwv_flow_api.g_varchar2_table(614) := '6B207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0A2020626F726465722D7261646975733A20313030253B0A7D0A0A2E742D5265706F72742D63656C6C2C0A2E742D5265706F72742D636F6C';
wwv_flow_api.g_varchar2_table(615) := '48656164207B0A2020626F726465722D6C6566743A2031707820736F6C696420236536653665363B0A2020626F726465722D746F703A2031707820736F6C696420236536653665363B0A7D0A2E742D5265706F72742D7265706F7274207472202E742D52';
wwv_flow_api.g_varchar2_table(616) := '65706F72742D63656C6C3A6C6173742D6368696C642C0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C64207B0A2020626F726465722D72696768743A2031707820736F6C696420';
wwv_flow_api.g_varchar2_table(617) := '236536653665363B0A7D0A2E742D5265706F72742D7265706F72742074723A6C6173742D6368696C64202E742D5265706F72742D63656C6C207B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(618) := '5265706F7274202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020626F726465722D626F74746F6D3A2031707820736F6C69642023653665366536';
wwv_flow_api.g_varchar2_table(619) := '3B0A7D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A686F766572202E742D5265706F72742D63656C6C2C0A2E742D5265706F72742D2D726F77486967686C69676874202E742D526570';
wwv_flow_api.g_varchar2_table(620) := '6F72742D7265706F72742074723A6E74682D6368696C64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E642D636F6C6F723A20236661666166612021696D706F7274616E743B0A7D0A2E742D526570';
wwv_flow_api.g_varchar2_table(621) := '6F72742D2D737461746963526F77436F6C6F7273202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E642D636F6C6F723A207472616E737061';
wwv_flow_api.g_varchar2_table(622) := '72656E743B0A7D0A0A2E742D5265706F72742D2D616C74526F777344656661756C74202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(623) := '636F6C6F723A20236663666366633B0A7D0A0A2E742D5265706F72742D706167696E6174696F6E5465787420622C0A2E742D5265706F72742D706167696E6174696F6E5465787420613A686F766572207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(624) := '3A20236530303630363B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D536F6369616C466F6F746572207B0A202070616464696E672D746F703A20343870783B0A202070616464696E672D626F74746F6D3A20323470783B0A7D0A2E742D53';
wwv_flow_api.g_varchar2_table(625) := '6F6369616C466F6F746572202E726F77207B0A202070616464696E672D746F703A203870783B0A7D0A2E742D536F6369616C466F6F746572202E636F6C207B0A202070616464696E672D626F74746F6D3A203870783B0A2020746578742D616C69676E3A';
wwv_flow_api.g_varchar2_table(626) := '2063656E7465723B0A20207472616E736974696F6E3A20616C6C202E32733B0A7D0A2E742D536F6369616C466F6F746572202E636F6C3A686F766572207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746559282D38707829';
wwv_flow_api.g_varchar2_table(627) := '3B0A20202D6D6F7A2D7472616E73666F726D3A207472616E736C61746559282D387078293B0A20202D6D732D7472616E73666F726D3A207472616E736C61746559282D387078293B0A20202D6F2D7472616E73666F726D3A207472616E736C6174655928';
wwv_flow_api.g_varchar2_table(628) := '2D387078293B0A20207472616E73666F726D3A207472616E736C61746559282D387078293B0A2020626F782D736861646F773A203070782038707820347078202D347078207267626128302C20302C20302C20302E3035293B0A7D0A2E742D536F636961';
wwv_flow_api.g_varchar2_table(629) := '6C466F6F7465722061207B0A20207472616E736974696F6E3A20616C6C202E32733B0A2020646973706C61793A20626C6F636B3B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A2020746578742D616C69676E3A2063656E7465723B0A';
wwv_flow_api.g_varchar2_table(630) := '2020636F6C6F723A20726762612835372C2035372C2035372C20302E38293B0A7D0A2E742D536F6369616C466F6F7465722061202E742D49636F6E207B0A2020646973706C61793A20626C6F636B3B0A20206D617267696E3A2030206175746F3B0A2020';
wwv_flow_api.g_varchar2_table(631) := '636F6C6F723A20726762612835372C2035372C2035372C20302E34293B0A7D0A2E742D536F6369616C466F6F7465722061202E6661207B0A2020666F6E742D73697A653A20323870783B0A202077696474683A20333270783B0A20206865696768743A20';
wwv_flow_api.g_varchar2_table(632) := '333270783B0A20206C696E652D6865696768743A20333270783B0A2020746578742D616C69676E3A2063656E7465723B0A7D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E207B0A202077696474683A20333270783B0A202068656967';
wwv_flow_api.g_varchar2_table(633) := '68743A20333270783B0A20206C696E652D6865696768743A20333270783B0A7D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E3A6265666F7265207B0A2020666F6E742D73697A653A20333270783B0A7D0A2E742D536F6369616C466F';
wwv_flow_api.g_varchar2_table(634) := '6F74657220613A686F7665722C0A2E742D536F6369616C466F6F74657220613A686F766572202E742D49636F6E207B0A2020636F6C6F723A20236661306130613B0A7D0A2E742D536561726368526573756C74732D64657363207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(635) := '20233339333933393B0A7D0A2E742D536561726368526573756C74732D64617465207B0A2020636F6C6F723A20233663366336633B0A7D0A2E742D536561726368526573756C74732D6D697363207B0A2020636F6C6F723A20233663366336633B0A7D0A';
wwv_flow_api.g_varchar2_table(636) := '2E742D526567696F6E202E742D536561726368526573756C74732D64657363207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D64617465207B0A2020636F6C6F723A20233733';
wwv_flow_api.g_varchar2_table(637) := '373337333B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D6D697363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D5374617475734C6973742D626C6F636B486561646572207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(638) := '3430343034303B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D5374617475734C6973742D68656164657254657874416C742C0A2E742D5374617475734C6973742D617474722C0A2E742D5374617475734C6973';
wwv_flow_api.g_varchar2_table(639) := '742D7465787444657363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D5374617475734C6973742D6974656D5469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D5374617475734C6973742D2D646174657320';
wwv_flow_api.g_varchar2_table(640) := '2E742D5374617475734C6973742D6D61726B6572207B0A2020636F6C6F723A20233730373037303B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D537461747573';
wwv_flow_api.g_varchar2_table(641) := '4C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B65723A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A2020626F726465722D7261646975733A2032707820327078203020303B0A';
wwv_flow_api.g_varchar2_table(642) := '7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6D61726B6572207B0A2020626F726465722D7261646975733A20323470783B0A20206261636B67726F756E642D636F6C6F723A20236666663B0A202063';
wwv_flow_api.g_varchar2_table(643) := '6F6C6F723A20233430343034303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D636F6D706C657465202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B';
wwv_flow_api.g_varchar2_table(644) := '67726F756E642D636F6C6F723A20233730373037303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D64616E676572202E742D5374617475734C6973742D6D61726B65722C0A2E';
wwv_flow_api.g_varchar2_table(645) := '742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6572726F72202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A2023666633623330';
wwv_flow_api.g_varchar2_table(646) := '3B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6F70656E202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20233463';
wwv_flow_api.g_varchar2_table(647) := '643936343B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D7761726E696E67202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(648) := '6F723A20236666636330303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(649) := '2D636F6C6F723A20234630463046303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(650) := '20234130413041303B0A7D0A0A2E742D546162732D2D73696D706C65202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B2C0A2E617065782D726473202E617065782D7264732D73656C65637465642061207B0A20';
wwv_flow_api.g_varchar2_table(651) := '20626F782D736861646F773A2030202D3270782030202366613532353220696E7365743B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A666F6375732C0A2E617065782D72647320613A666F637573207B0A2020626F78';
wwv_flow_api.g_varchar2_table(652) := '2D736861646F773A20302030203020327078202366613532353220696E7365743B0A7D0A2E742D546162732D2D70696C6C207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428236638663866382C2023663466346634293B';
wwv_flow_api.g_varchar2_table(653) := '0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D426F6479202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233739373937393B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D';
wwv_flow_api.g_varchar2_table(654) := '70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(655) := '6E202E742D546162732D2D70696C6C202E742D49636F6E2C0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D426F6479202E742D54616273';
wwv_flow_api.g_varchar2_table(656) := '2D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233430343034';
wwv_flow_api.g_varchar2_table(657) := '303B0A7D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E742D546162732D2D70696C6C202E742D546162732D6C';
wwv_flow_api.g_varchar2_table(658) := '696E6B2C0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A686F76';
wwv_flow_api.g_varchar2_table(659) := '6572207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A666F637573207B0A2020626F726465722D636F6C6F723A20233436393646433B0A7D0A2E742D5461';
wwv_flow_api.g_varchar2_table(660) := '62732D2D70696C6C202E742D546162732D6C696E6B3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20234630463046303B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D3A66697273742D6368696C64';
wwv_flow_api.g_varchar2_table(661) := '202E742D546162732D6C696E6B207B0A2020626F726465722D7261646975733A2032707820302030203270783B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B0A';
wwv_flow_api.g_varchar2_table(662) := '20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D546162732D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C69';
wwv_flow_api.g_varchar2_table(663) := '6E6B2C0A2E617065782D7264732061207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A686F7665722C0A2E617065782D72647320613A686F766572207B0A20206261636B';
wwv_flow_api.g_varchar2_table(664) := '67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A6163746976652C0A2E617065782D72647320613A616374697665207B0A20206261';
wwv_flow_api.g_varchar2_table(665) := '636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0A7D0A2E742D426F6479202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F6479202E617065782D7264732061207B0A20';
wwv_flow_api.g_varchar2_table(666) := '20636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F64792D7469746C65202E617065782D72647320612C0A2E742D426F64792D696E';
wwv_flow_api.g_varchar2_table(667) := '666F202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F64792D696E666F202E617065782D7264732061207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E742D546162732D2D73';
wwv_flow_api.g_varchar2_table(668) := '696D706C65202E742D546162732D6C696E6B2C0A2E742D526567696F6E202E617065782D7264732061207B0A2020636F6C6F723A20233430343034303B0A7D0A2E617065782D7264732D686F7665722E6C6566742061207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(669) := '643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2023666666666666203530252C2072676261283235352C203235352C203235352C2030292031303025293B0A20200A20206261636B67726F756E643A206C696E6561722D';
wwv_flow_api.g_varchar2_table(670) := '6772616469656E7428746F2072696768742C2023666666666666203530252C2072676261283235352C203235352C203235352C2030292031303025293B0A20200A7D0A2E617065782D7264732D686F7665722E72696768742061207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(671) := '726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C20236666666666662030252C2072676261283235352C203235352C203235352C2030292031252C202366666666666620353025293B0A20200A20206261636B67';
wwv_flow_api.g_varchar2_table(672) := '726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C20236666666666662030252C2072676261283235352C203235352C203235352C2030292031252C202366666666666620353025293B0A20200A7D0A0A2E612D546167436C';
wwv_flow_api.g_varchar2_table(673) := '6F75642D6C696E6B207B0A2020626F726465722D636F6C6F723A20236632663266323B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E643A20236661666166613B0A20207472616E736974696F6E3A206261636B67';
wwv_flow_api.g_varchar2_table(674) := '726F756E642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F782D736861646F7720302E32732C20636F6C6F7220302E32733B0A2020636F6C6F723A20236661303530353B0A7D0A2E612D546167436C6F75642D6C69';
wwv_flow_api.g_varchar2_table(675) := '6E6B207370616E207B0A20207472616E736974696F6E3A20636F6C6F72202E32733B0A7D0A2E612D546167436C6F75642D6C696E6B3A686F766572207B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(676) := '636F6C6F723A20236530303630363B0A2020626F726465722D636F6C6F723A20236530303630363B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A20302030203020327078202365303036303620696E7365743B0A7D0A';
wwv_flow_api.g_varchar2_table(677) := '2E612D546167436C6F75642D6C696E6B3A686F766572207370616E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E612D546167436C6F75642D636F756E74207B0A2020636F6C6F723A20233636363636363B0A2020666F6E742D7765696768';
wwv_flow_api.g_varchar2_table(678) := '743A203230303B0A7D0A2E742D54696D656C696E65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D54696D656C696E652D757365726E616D652C0A2E742D54696D656C696E652D646174652C0A2E742D54696D656C696E652D64657363';
wwv_flow_api.g_varchar2_table(679) := '207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D54696D656C696E652D77726170207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D54696D656C696E652D74797065207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(680) := '20236632663266323B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D54696D656C696E652D747970652E69732D6E6577207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20234646463B0A';
wwv_flow_api.g_varchar2_table(681) := '7D0A2E742D54696D656C696E652D747970652E69732D75706461746564207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20234646463B0A7D0A2E742D54696D656C696E652D747970652E69732D7265';
wwv_flow_api.g_varchar2_table(682) := '6D6F766564207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20234646463B0A7D0A2E742D54696D656C696E652D777261703A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F';
wwv_flow_api.g_varchar2_table(683) := '782D736861646F773A20302030203020317078202365303036303620696E7365743B0A7D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E6176207B0A20206261636B67726F756E642D636F6C6F723A20233935303430343B';
wwv_flow_api.g_varchar2_table(684) := '0A7D0A2E742D526567696F6E207B0A20200A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(685) := '302030203020317078202365386538653820696E7365743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(686) := '6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472';
wwv_flow_api.g_varchar2_table(687) := '6565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D';
wwv_flow_api.g_varchar2_table(688) := '746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54';
wwv_flow_api.g_varchar2_table(689) := '726565566965772D726F772C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D54';
wwv_flow_api.g_varchar2_table(690) := '726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236630663066302021696D706F7274616E743B0A7D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(691) := '6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0A2E742D526567696F6E202E612D54726565566965772D6E6F';
wwv_flow_api.g_varchar2_table(692) := '64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D547265';
wwv_flow_api.g_varchar2_table(693) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0A2E742D526567696F6E202E612D54726565566965772D6E6F6465';
wwv_flow_api.g_varchar2_table(694) := '2D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D547265';
wwv_flow_api.g_varchar2_table(695) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565';
wwv_flow_api.g_varchar2_table(696) := '566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E';
wwv_flow_api.g_varchar2_table(697) := '612D54726565566965772D636F6E74656E74202E66612C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(698) := '726762612836342C2036342C2036342C20302E3935293B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0A2E742D';
wwv_flow_api.g_varchar2_table(699) := '526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0A2E742D526567696F6E202E612D54726565566965772D6E6F64';
wwv_flow_api.g_varchar2_table(700) := '652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D63';
wwv_flow_api.g_varchar2_table(701) := '6F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965';
wwv_flow_api.g_varchar2_table(702) := '772D6C6162656C207B0A2020636F6C6F723A20696E68657269743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0A2E';
wwv_flow_api.g_varchar2_table(703) := '742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(704) := '4C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C';
wwv_flow_api.g_varchar2_table(705) := '202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265';
wwv_flow_api.g_varchar2_table(706) := '65566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(707) := '2D726F77207B0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E20';
wwv_flow_api.g_varchar2_table(708) := '2E612D54726565566965772D726F772E69732D73656C65637465642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E69';
wwv_flow_api.g_varchar2_table(709) := '732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D';
wwv_flow_api.g_varchar2_table(710) := '666F6375736564207B0A2020626F782D736861646F773A20302030203020317078202366343037303720696E7365743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(711) := '2D726F772E69732D63757272656E742C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0A2E742D547265654E6176202E612D5472';
wwv_flow_api.g_varchar2_table(712) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0A20206261636B67726F756E642D636F6C6F723A20236436303630363B0A7D0A2E';
wwv_flow_api.g_varchar2_table(713) := '742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D74';
wwv_flow_api.g_varchar2_table(714) := '6F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(715) := '6C6F723A20236337303530353B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(716) := '20236535303630362021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(717) := '746F67676C652C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A2072676261283235352C';
wwv_flow_api.g_varchar2_table(718) := '203235352C203235352C20302E3735293B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67';
wwv_flow_api.g_varchar2_table(719) := '676C653A686F7665722C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(720) := '236666666666662021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(721) := '236666666666662021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0A2020636F6C6F723A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(722) := '7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576';
wwv_flow_api.g_varchar2_table(723) := '656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265655669';
wwv_flow_api.g_varchar2_table(724) := '65772D636F6E74656E742E69732D686F766572202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E';
wwv_flow_api.g_varchar2_table(725) := '66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0A2E742D547265654E6176202E612D547265655669';
wwv_flow_api.g_varchar2_table(726) := '65772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D5472';
wwv_flow_api.g_varchar2_table(727) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0A2020636F6C6F723A20696E68657269743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20';
wwv_flow_api.g_varchar2_table(728) := '2E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465';
wwv_flow_api.g_varchar2_table(729) := '642C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0A2020636F6C6F723A20236666666666663B0A7D0A2E';
wwv_flow_api.g_varchar2_table(730) := '742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D54';
wwv_flow_api.g_varchar2_table(731) := '7265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A2E742D547265654E';
wwv_flow_api.g_varchar2_table(732) := '6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B0A7D0A2E742D547265654E6176202E61';
wwv_flow_api.g_varchar2_table(733) := '2D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576';
wwv_flow_api.g_varchar2_table(734) := '656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(735) := '4C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74207B0A2020636F6C6F723A20236666666666663B0A7D0A0A2E742D4469616C6F672D2D77697A617264207B0A2020626F726465723A20236536653665';
wwv_flow_api.g_varchar2_table(736) := '363B0A7D0A2E742D57697A617264207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D57697A617264202E742D57697A6172642D7469746C65207B0A2020';
wwv_flow_api.g_varchar2_table(737) := '636F6C6F723A20233430343034303B0A7D0A626F6479202E742D57697A6172642D2D6D6F64616C207B0A20206261636B67726F756E643A20236666666666663B0A7D0A626F6479202E742D57697A6172642D2D6D6F64616C202E742D57697A6172642D62';
wwv_flow_api.g_varchar2_table(738) := '6F6479207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666666666203430252C2072676261283235352C203235352C203235352C203029292C206C696E6561722D6772616469656E742872676261283235352C20';
wwv_flow_api.g_varchar2_table(739) := '3235352C203235352C2030292C20236666666666662036302529203020313030252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303235292C207267626128302C20302C20302C203029292C206C696E6561722D67';
wwv_flow_api.g_varchar2_table(740) := '72616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E3032352929203020313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A626F6479202E742D57697A6172';
wwv_flow_api.g_varchar2_table(741) := '642D2D6D6F64616C202E742D526567696F6E207B0A20206261636B67726F756E643A20236666666666663B0A7D0A2E742D57697A617264207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D57697A617264202E742D5769';
wwv_flow_api.g_varchar2_table(742) := '7A6172642D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020626F726465722D636F6C6F723A20236564656465643B0A7D0A2E742D57697A61726453746570732D777261703A6166746572207B0A2020';
wwv_flow_api.g_varchar2_table(743) := '6261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D57697A61726453746570732D73746570202E742D57697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A2023636363636363';
wwv_flow_api.g_varchar2_table(744) := '3B0A7D0A2E742D57697A61726453746570732D737465702E69732D636F6D706C657465202E742D57697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A202346';
wwv_flow_api.g_varchar2_table(745) := '46463B0A7D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A7D0A2E742D57697A617264';
wwv_flow_api.g_varchar2_table(746) := '53746570732D6C6162656C207B0A2020636F6C6F723A20233636363636363B0A7D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6C6162656C207B0A2020636F6C6F723A2023343034';
wwv_flow_api.g_varchar2_table(747) := '3034303B0A7D0A0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20303B0A2020626F726465722D626F74746F6D2D6C6566742D';
wwv_flow_api.g_varchar2_table(748) := '7261646975733A20303B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A20233339333933393B0A7D0A626F64';
wwv_flow_api.g_varchar2_table(749) := '79202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365207B0A2020626F726465722D7261646975733A20313030253B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D627574746F6E70';
wwv_flow_api.g_varchar2_table(750) := '616E65207B0A2020626F726465722D746F702D636F6C6F723A20234630463046303B0A7D0A0A626F6479202E75692D7769646765742D636F6E74656E74207B0A2020626F726465722D636F6C6F723A20236562656265623B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(751) := '642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D7769646765742D636F6E74656E742061207B0A2020636F6C6F723A20236661306130613B0A7D0A626F6479202E75692D7769646765';
wwv_flow_api.g_varchar2_table(752) := '742D686561646572207B0A2020626F726465722D636F6C6F723A20236562656265623B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A2020636F6C6F723A20233364336433643B0A7D0A626F6479202E75692D776964676574';
wwv_flow_api.g_varchar2_table(753) := '2D6865616465722061207B0A2020636F6C6F723A20233364336433643B0A7D0A0A626F6479202E75692D73746174652D64656661756C742C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D64656661756C742C0A';
wwv_flow_api.g_varchar2_table(754) := '626F6479202E75692D7769646765742D686561646572202E75692D73746174652D64656661756C74207B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A2020636F6C6F723A20233338333833383B0A7D0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(755) := '2D73746174652D64656661756C7420612C0A626F6479202E75692D73746174652D64656661756C7420613A6C696E6B2C0A626F6479202E75692D73746174652D64656661756C7420613A766973697465642C0A626F6479202E75692D73746174652D6163';
wwv_flow_api.g_varchar2_table(756) := '7469766520612C0A626F6479202E75692D73746174652D61637469766520613A6C696E6B2C0A626F6479202E75692D73746174652D61637469766520613A76697369746564207B0A2020636F6C6F723A20236661306130613B0A7D0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(757) := '2D73746174652D686F7665722C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686F7665722C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686F766572207B0A20206261';
wwv_flow_api.g_varchar2_table(758) := '636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233338333833383B0A7D0A626F6479202E75692D73746174652D666F6375732C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D7374617465';
wwv_flow_api.g_varchar2_table(759) := '2D666F6375732C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D666F637573207B0A2020626F782D736861646F773A20302030203020317078202365303036303620696E7365742C20302030203170782032707820';
wwv_flow_api.g_varchar2_table(760) := '72676261283232342C20362C20362C20302E3235292021696D706F7274616E743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233338333833383B0A7D0A626F6479202E75692D646174657069636B';
wwv_flow_api.g_varchar2_table(761) := '6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E3A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202365303036303620696E7365742C20';
wwv_flow_api.g_varchar2_table(762) := '30203020317078203270782072676261283232342C20362C20362C20302E3235292021696D706F7274616E743B0A7D0A626F6479202E75692D73746174652D686F76657220612C0A626F6479202E75692D73746174652D686F76657220613A686F766572';
wwv_flow_api.g_varchar2_table(763) := '2C0A626F6479202E75692D73746174652D686F76657220613A6C696E6B2C0A626F6479202E75692D73746174652D686F76657220613A766973697465642C0A626F6479202E75692D73746174652D666F63757320612C0A626F6479202E75692D73746174';
wwv_flow_api.g_varchar2_table(764) := '652D666F63757320613A686F7665722C0A626F6479202E75692D73746174652D666F63757320613A6C696E6B2C0A626F6479202E75692D73746174652D666F63757320613A76697369746564207B0A2020636F6C6F723A20236661306130613B0A7D0A62';
wwv_flow_api.g_varchar2_table(765) := '6F6479202E75692D73746174652D6163746976652C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6163746976652C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D616374';
wwv_flow_api.g_varchar2_table(766) := '697665207B0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0A2020636F6C6F723A20233338333833383B0A7D0A0A626F6479202E75692D73746174652D686967686C696768742C0A626F6479202E75692D7769646765742D636F';
wwv_flow_api.g_varchar2_table(767) := '6E74656E74202E75692D73746174652D686967686C696768742C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C69676874207B0A20206261636B67726F756E642D636F6C6F723A20236665653765373B';
wwv_flow_api.g_varchar2_table(768) := '0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D73746174652D686967686C6967687420612C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C6967687420612C0A626F6479';
wwv_flow_api.g_varchar2_table(769) := '202E75692D7769646765742D686561646572202E75692D73746174652D686967686C696768742061207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D73746174652D6572726F722C0A626F6479202E75692D776964676574';
wwv_flow_api.g_varchar2_table(770) := '2D636F6E74656E74202E75692D73746174652D6572726F722C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F72207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F';
wwv_flow_api.g_varchar2_table(771) := '6C6F723A20236666656165393B0A7D0A626F6479202E75692D73746174652D6572726F7220612C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F7220612C0A626F6479202E75692D7769646765742D68';
wwv_flow_api.g_varchar2_table(772) := '6561646572202E75692D73746174652D6572726F722061207B0A2020636F6C6F723A20236666656165393B0A7D0A626F6479202E75692D73746174652D6572726F722D746578742C0A626F6479202E75692D7769646765742D636F6E74656E74202E7569';
wwv_flow_api.g_varchar2_table(773) := '2D73746174652D6572726F722D746578742C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722D74657874207B0A2020636F6C6F723A20236539306330303B0A7D0A0A626F6479202E75692D6461746570';
wwv_flow_api.g_varchar2_table(774) := '69636B6572207464207370616E2E75692D73746174652D64656661756C742C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C74207B0A20206261636B67726F756E642D636F6C6F723A207472616E';
wwv_flow_api.g_varchar2_table(775) := '73706172656E743B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652C0A626F6479202E75692D';
wwv_flow_api.g_varchar2_table(776) := '646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A2020636F6C6F723A20236666666666663B0A2020';
wwv_flow_api.g_varchar2_table(777) := '666F6E742D7765696768743A20626F6C643B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F7665722C0A626F';
wwv_flow_api.g_varchar2_table(778) := '6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A2023653030363036';
wwv_flow_api.g_varchar2_table(779) := '2021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686F7665722C0A626F6479202E75692D646174657069636B65722074642061';
wwv_flow_api.g_varchar2_table(780) := '2E75692D73746174652D64656661756C742E75692D73746174652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B657220746420';
wwv_flow_api.g_varchar2_table(781) := '7370616E2E75692D73746174652D64656661756C743A666F6375732C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C743A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F';
wwv_flow_api.g_varchar2_table(782) := '782D736861646F773A20302030203020317078202365303036303620696E7365742C2030203020317078203270782072676261283232342C20362C20362C20302E3235292021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B';
wwv_flow_api.g_varchar2_table(783) := '6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686967686C696768742C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D68';
wwv_flow_api.g_varchar2_table(784) := '6967686C69676874207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A626F6479202E75692D646174657069636B6572207468207B0A2020636F6C6F723A20233830383038303B0A7D0A626F6479202E75692D64617465';
wwv_flow_api.g_varchar2_table(785) := '7069636B6572202E75692D646174657069636B65722D6865616465722C0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E2C0A626F6479202E75692D64617465706963';
wwv_flow_api.g_varchar2_table(786) := '6B6572202E75692D646174657069636B65722D6E6578742C0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D70726576207B0A2020626F726465722D7261646975733A203270783B0A7D0A0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(787) := '2D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236532653265323B0A7D0A626F64';
wwv_flow_api.g_varchar2_table(788) := '79202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A20233364336433643B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E742C0A2E742D4469616C6F672D7061';
wwv_flow_api.g_varchar2_table(789) := '6765207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F672C0A2E742D4469616C6F672D2D77697A6172';
wwv_flow_api.g_varchar2_table(790) := '642E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722C0A2E742D4469616C6F672D2D77697A61726420626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E74207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(791) := '2D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A2023343034303430';
wwv_flow_api.g_varchar2_table(792) := '3B0A7D0A0A626F6479202E75692D636F726E65722D616C6C207B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D746F702C0A626F6479202E75692D636F726E65722D6C6566742C0A626F6479202E';
wwv_flow_api.g_varchar2_table(793) := '75692D636F726E65722D746C207B0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D746F702C0A626F6479202E75692D636F726E65722D72696768742C0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(794) := '2D636F726E65722D7472207B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D636F726E65722D6C6566742C0A626F6479202E75';
wwv_flow_api.g_varchar2_table(795) := '692D636F726E65722D626C207B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D636F726E65722D72696768742C0A626F64';
wwv_flow_api.g_varchar2_table(796) := '79202E75692D636F726E65722D6272207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0A7D0A0A626F6479202E75692D627574746F6E2E75692D636F726E65722D616C6C207B0A2020626F726465722D726164';
wwv_flow_api.g_varchar2_table(797) := '6975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0A626F6479202E75692D627574746F6E2E75692D636F726E6572';
wwv_flow_api.g_varchar2_table(798) := '2D746C207B0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768';
wwv_flow_api.g_varchar2_table(799) := '742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D7472207B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D';
wwv_flow_api.g_varchar2_table(800) := '2C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626C207B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0A7D';
wwv_flow_api.g_varchar2_table(801) := '0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6272207B0A20';
wwv_flow_api.g_varchar2_table(802) := '20626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0A7D0A0A2E61635F726573756C7473207B0A2020626F726465723A2031707820736F6C696420236439643964393B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(803) := '236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E61635F6C6F6164696E67207B0A20206261636B67726F756E643A20236666666666662075726C28272E2E2F2E2E2F2E2E2F617065785F75692F696D672F6C65676163792F6C6F';
wwv_flow_api.g_varchar2_table(804) := '6164696E6731367831362E67696627292072696768742063656E746572206E6F2D7265706561743B0A7D0A2E61635F6F6464207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A626F6479202E61635F6F766572207B0A';
wwv_flow_api.g_varchar2_table(805) := '20206261636B67726F756E642D636F6C6F723A20236530303630363B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D617869732D7469746C652C0A626F6479';
wwv_flow_api.g_varchar2_table(806) := '202E612D44334261724368617274202E612D44334C696E6543686172742D617869732D7469746C65207B0A202066696C6C3A20233430343034303B0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D617869';
wwv_flow_api.g_varchar2_table(807) := '73202E7469636B20746578742C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973202E7469636B2074657874207B0A202066696C6C3A20233830383038303B0A7D0A626F6479202E612D44334C696E6543';
wwv_flow_api.g_varchar2_table(808) := '68617274202E612D44334C696E6543686172742D61786973206C696E652C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973206C696E652C0A626F6479202E612D44334C696E654368617274202E612D44';
wwv_flow_api.g_varchar2_table(809) := '334C696E6543686172742D6178697320706174682C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D617869732070617468207B0A20207374726F6B653A20236536653665363B0A7D0A626F6479202E612D443342';
wwv_flow_api.g_varchar2_table(810) := '61724368617274202E612D443342617243686172742D617869732D7469746C65207B0A202066696C6C3A20233430343034303B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D67726964206C696E652C0A626F';
wwv_flow_api.g_varchar2_table(811) := '6479202E612D44334261724368617274202E612D443342617243686172742D67726964207B0A20207374726F6B653A20236536653665363B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D61786973206C696E';
wwv_flow_api.g_varchar2_table(812) := '652C0A626F6479202E612D44334261724368617274202E612D443342617243686172742D617869732070617468207B0A20207374726F6B653A20236363636363633B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172';
wwv_flow_api.g_varchar2_table(813) := '742D61786973202E7469636B2074657874207B0A202066696C6C3A20233830383038303B0A7D0A626F6479202E612D4433546F6F6C746970207B0A20206261636B67726F756E642D636F6C6F723A20233830383038303B0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(814) := '666666662021696D706F7274616E743B0A7D0A626F6479202E612D4433546F6F6C7469702D636F6E74656E74207B0A2020626F726465722D746F703A20233939393939393B0A7D0A626F6479202E612D443343686172744C6567656E642E612D44334368';
wwv_flow_api.g_varchar2_table(815) := '6172744C6567656E642D2D65787465726E616C2D626F7264657273207B0A2020626F726465722D77696474683A20303B0A7D0A626F6479202E612D443343686172744C6567656E642D6974656D2C0A626F6479202E612D443343686172744C6567656E64';
wwv_flow_api.g_varchar2_table(816) := '2E612D443343686172744C6567656E642D2D6261636B67726F756E64202E612D443343686172744C6567656E642D6C61796F7574207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D776964';
wwv_flow_api.g_varchar2_table(817) := '74683A20302021696D706F7274616E743B0A7D0A626F6479202E612D443343686172744C6567656E642D6974656D2D76616C7565207B0A2020636F6C6F723A20233636363636363B0A7D0A626F6479202E612D443343686172744C6567656E642E612D44';
wwv_flow_api.g_varchar2_table(818) := '3343686172744C6567656E642D2D7371756172652D636F6C6F72202E612D443343686172744C6567656E642D6974656D2D636F6C6F72207B0A2020626F726465722D7261646975733A20313030253B0A2020626F726465722D72696768742D7769647468';
wwv_flow_api.g_varchar2_table(819) := '3A20303B0A7D0A2E742D426F6479207B0A20200A20200A20200A7D0A2E742D426F6479202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420236466646664663B0A2020626F726465722D7261646975733A203270783B0A';
wwv_flow_api.g_varchar2_table(820) := '20206261636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A2E742D426F6479202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F6479202E612D4D696E6943616C2D646179';
wwv_flow_api.g_varchar2_table(821) := '4F665765656B207B0A2020636F6C6F723A20233739373937393B0A7D0A2E742D426F6479202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236632663266323B0A2020636F6C6F723A20233339333933393B0A7D0A2E';
wwv_flow_api.g_varchar2_table(822) := '742D426F6479202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A2020636F6C6F723A20236666666666663B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(823) := '2D426F6479202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(824) := '2D426F6479202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236633663366333B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A2020';
wwv_flow_api.g_varchar2_table(825) := '6261636B67726F756E642D636F6C6F723A20236565656565653B0A7D0A2E742D526567696F6E207B0A20200A20200A20200A7D0A2E742D526567696F6E202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C6964202365366536';
wwv_flow_api.g_varchar2_table(826) := '65363B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A202334303430';
wwv_flow_api.g_varchar2_table(827) := '34303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(828) := '3A20236639663966393B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(829) := '723A20236530303630363B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(830) := '6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B';
wwv_flow_api.g_varchar2_table(831) := '0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E742D426F64792D616374696F6E73207B0A20200A20200A20200A7D0A2E74';
wwv_flow_api.g_varchar2_table(832) := '2D426F64792D616374696F6E73202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420236432643264323B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A202365';
wwv_flow_api.g_varchar2_table(833) := '62656265623B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461794F665765656B';
wwv_flow_api.g_varchar2_table(834) := '207B0A2020636F6C6F723A20233663366336633B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236535653565353B0A2020636F6C6F723A20233263326332633B0A7D';
wwv_flow_api.g_varchar2_table(835) := '0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(836) := '666666663B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F';
wwv_flow_api.g_varchar2_table(837) := '6C6F723A20233030303030303B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D426F64792D61';
wwv_flow_api.g_varchar2_table(838) := '6374696F6E73202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20236531653165313B0A7D0A2E742D426F64792D696E666F207B0A20200A20200A20200A7D0A2E742D426F64792D696E66';
wwv_flow_api.g_varchar2_table(839) := '6F202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420236536653665363B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(840) := '426F64792D696E666F202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20233830383038';
wwv_flow_api.g_varchar2_table(841) := '303B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236639663966393B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D696E666F202E612D4D696E69';
wwv_flow_api.g_varchar2_table(842) := '43616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236530303630363B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D696E666F202E612D';
wwv_flow_api.g_varchar2_table(843) := '4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F64792D696E66';
wwv_flow_api.g_varchar2_table(844) := '6F202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20';
wwv_flow_api.g_varchar2_table(845) := '206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A0A2E742D426F6479202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D696E';
wwv_flow_api.g_varchar2_table(846) := '666F202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C652C0A2E742D427574';
wwv_flow_api.g_varchar2_table(847) := '746F6E526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D3A666F63757320';
wwv_flow_api.g_varchar2_table(848) := '2E612D44657461696C6564436F6E74656E744C6973742D686561646572207B0A2020626F782D736861646F773A20302030203020317078202361653035303520696E7365743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C697374';
wwv_flow_api.g_varchar2_table(849) := '2D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F782D736861646F773A20302030203020';
wwv_flow_api.g_varchar2_table(850) := '317078202365303036303620696E7365743B0A2020636F6C6F723A20236530303630363B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E7465';
wwv_flow_api.g_varchar2_table(851) := '6E744C6973742D747269676765723A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20236165303530353B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A2030203020302031707820236165303530';
wwv_flow_api.g_varchar2_table(852) := '3520696E7365743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6865616465723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A626F6479202E612D44657461696C65';
wwv_flow_api.g_varchar2_table(853) := '64436F6E74656E744C6973742D69636F6E207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E35293B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6261646765207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(854) := '3430343034303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0A20206261636B67726F756E643A20236666666666663B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E37';
wwv_flow_api.g_varchar2_table(855) := '35293B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A686F766572207B0A2020636F6C6F723A20236165303530353B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D7472';
wwv_flow_api.g_varchar2_table(856) := '69676765723A666F637573207B0A2020636F6C6F723A20236165303530353B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A';
wwv_flow_api.g_varchar2_table(857) := '626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20206261636B67726F756E642D636F6C6F723A20233764303330333B0A7D0A626F6479202E636F6E74656E742D746F6F';
wwv_flow_api.g_varchar2_table(858) := '6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F';
wwv_flow_api.g_varchar2_table(859) := '6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0A2020636F6C6F723A20236661353235323B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D686561646572207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(860) := '756E643A20236666666666663B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E612D44657461696C6564436F6E';
wwv_flow_api.g_varchar2_table(861) := '74656E744C6973742D626F64792D726F772D636F6E74656E74207B0A2020636F6C6F723A20233764303330333B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D74';
wwv_flow_api.g_varchar2_table(862) := '6F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6166746572207B0A2020626F726465722D636F6C6F723A2023666666666666207472616E73706172656E743B0A7D0A626F6479202E612D44657461696C6564436F';
wwv_flow_api.g_varchar2_table(863) := '6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6265666F7265207B0A2020626F726465722D636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(864) := '66207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970207B0A20202D7765626B69742D626F726465722D7261646975733A203270783B0A20202D6D6F7A2D626F726465722D72616469';
wwv_flow_api.g_varchar2_table(865) := '75733A203270783B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20202D77';
wwv_flow_api.g_varchar2_table(866) := '65626B69742D626F726465722D7261646975733A203270783B0A20202D6D6F7A2D626F726465722D7261646975733A203270783B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E';
wwv_flow_api.g_varchar2_table(867) := '742D746F6F6C746970202E6172726F772E626F74746F6D3A6265666F7265207B0A2020626F726465722D636F6C6F723A2023376430333033207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F';
wwv_flow_api.g_varchar2_table(868) := '6C746970202E6172726F772E626F74746F6D3A6166746572207B0A2020626F726465722D636F6C6F723A2023376430333033207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E';
wwv_flow_api.g_varchar2_table(869) := '6172726F772E626F74746F6D2E6C696768743A6166746572207B0A2020626F726465722D636F6C6F723A2023656165616561207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E';
wwv_flow_api.g_varchar2_table(870) := '6172726F772E746F703A6265666F7265207B0A2020626F726465722D636F6C6F723A2023376430333033207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F';
wwv_flow_api.g_varchar2_table(871) := '703A6166746572207B0A2020626F726465722D636F6C6F723A2023376430333033207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6265666F7265';
wwv_flow_api.g_varchar2_table(872) := '207B0A2020626F726465722D636F6C6F723A207472616E73706172656E742023666666666666207472616E73706172656E74207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E';
wwv_flow_api.g_varchar2_table(873) := '6172726F772E6C6566743A6166746572207B0A2020626F726465722D636F6C6F723A207472616E73706172656E742023376430333033207472616E73706172656E74207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E63';
wwv_flow_api.g_varchar2_table(874) := '6F6E74656E742D746F6F6C746970202E6172726F772E72696768743A6265666F7265207B0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172656E7420726762612836342C203634';
wwv_flow_api.g_varchar2_table(875) := '2C2036342C20302E35293B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E72696768743A6166746572207B0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E';
wwv_flow_api.g_varchar2_table(876) := '73706172656E74207472616E73706172656E7420233764303330333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(877) := '6368696C6428203129207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(878) := '73742D6974656D3A6E74682D6368696C64282031292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(879) := '654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663630376520696E7365743B0A7D0A626F6479202E';
wwv_flow_api.g_varchar2_table(880) := '742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0A20206261636B67726F756E642D636F6C6F723A202330303761';
wwv_flow_api.g_varchar2_table(881) := '66663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(882) := '66666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(883) := '742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333333935666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(884) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261646765';
wwv_flow_api.g_varchar2_table(885) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261';
wwv_flow_api.g_varchar2_table(886) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030';
wwv_flow_api.g_varchar2_table(887) := '2030202366666161333320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429207B';
wwv_flow_api.g_varchar2_table(888) := '0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(889) := '2D6368696C64282034292061207B0A2020636F6C6F723A20233037316630623B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(890) := '6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202332616338343520696E7365743B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(891) := '2D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(892) := '2E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F';
wwv_flow_api.g_varchar2_table(893) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F7665';
wwv_flow_api.g_varchar2_table(894) := '72207B0A2020626F782D736861646F773A2030202D38707820302030202361386138616320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(895) := '654C6973742D6974656D3A6E74682D6368696C6428203629207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(896) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(897) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335666263653420';
wwv_flow_api.g_varchar2_table(898) := '696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(899) := '6E642D636F6C6F723A20236666636330303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920';
wwv_flow_api.g_varchar2_table(900) := '61207B0A2020636F6C6F723A20233030303030303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(901) := '372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202363636133303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261';
wwv_flow_api.g_varchar2_table(902) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(903) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0A2020636F6C6F723A20233032333935323B0A7D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(904) := '4C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D73';
wwv_flow_api.g_varchar2_table(905) := '6861646F773A2030202D38707820302030202332386237663920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(906) := '6E74682D6368696C6428203929207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(907) := '67654C6973742D6974656D3A6E74682D6368696C64282039292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(908) := '42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663662363320696E7365743B0A7D0A626F';
wwv_flow_api.g_varchar2_table(909) := '6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(910) := '233538353664363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(911) := '6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031302920612E742D42';
wwv_flow_api.g_varchar2_table(912) := '616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202338313766653020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(913) := '2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A626F6479202E742D42616467654C6973742D2D64617368';
wwv_flow_api.g_varchar2_table(914) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(915) := '646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F77';
wwv_flow_api.g_varchar2_table(916) := '3A2030202D38707820302030202366663861613020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(917) := '68696C642820313229207B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(918) := '73742D6974656D3A6E74682D6368696C6428203132292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(919) := '67654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336366166666620696E7365743B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(920) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329207B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(921) := '66616133333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(922) := '3A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D426164';
wwv_flow_api.g_varchar2_table(923) := '67654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663935303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(924) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(925) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0A2020636F6C6F723A20233338346333633B0A7D0A626F6479202E742D42616467654C6973742D2D6461';
wwv_flow_api.g_varchar2_table(926) := '73682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(927) := '30202D38707820302030202334366438356620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(928) := '6C642820313529207B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(929) := '2D6974656D3A6E74682D6368696C6428203135292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261646765';
wwv_flow_api.g_varchar2_table(930) := '4C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362666266633220696E7365743B0A7D0A626F6479202E';
wwv_flow_api.g_varchar2_table(931) := '742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0A20206261636B67726F756E642D636F6C6F723A2023356462';
wwv_flow_api.g_varchar2_table(932) := '6265333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(933) := '236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D4261646765';
wwv_flow_api.g_varchar2_table(934) := '4C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333316139646220696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C';
wwv_flow_api.g_varchar2_table(935) := '6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(936) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0A2020636F6C6F723A20233333333333333B0A7D0A626F6479202E742D42616467654C6973742D2D64617368';
wwv_flow_api.g_varchar2_table(937) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(938) := '2D38707820302030202366666363303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(939) := '2820313829207B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(940) := '74656D3A6E74682D6368696C6428203138292061207B0A2020636F6C6F723A20233335363137353B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(941) := '73742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334396332666120696E7365743B0A7D0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(942) := '42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0A20206261636B67726F756E642D636F6C6F723A20236666363235';
wwv_flow_api.g_varchar2_table(943) := '393B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(944) := '66666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(945) := '73742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663932386320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(946) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D426164';
wwv_flow_api.g_varchar2_table(947) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E74';
wwv_flow_api.g_varchar2_table(948) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38';
wwv_flow_api.g_varchar2_table(949) := '707820302030202361326131653820696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(950) := '323129207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(951) := '6D3A6E74682D6368696C6428203231292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(952) := '2D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623536373220696E7365743B0A7D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(953) := '6467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B';
wwv_flow_api.g_varchar2_table(954) := '0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0A2020636F6C6F723A2023653665';
wwv_flow_api.g_varchar2_table(955) := '3665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(956) := '2D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202331613837666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(957) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329207B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261646765';
wwv_flow_api.g_varchar2_table(958) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203233292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42';
wwv_flow_api.g_varchar2_table(959) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078';
wwv_flow_api.g_varchar2_table(960) := '20302030202366666130316120696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234';
wwv_flow_api.g_varchar2_table(961) := '29207B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(962) := '6E74682D6368696C6428203234292061207B0A2020636F6C6F723A20233036316330613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(963) := '74656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336626430376320696E7365743B0A7D0A626F6479202E742D42616467';
wwv_flow_api.g_varchar2_table(964) := '654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D';
wwv_flow_api.g_varchar2_table(965) := '0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0A2020636F6C6F723A20236536653665';
wwv_flow_api.g_varchar2_table(966) := '363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D77';
wwv_flow_api.g_varchar2_table(967) := '7261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202339613961396420696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(968) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C69';
wwv_flow_api.g_varchar2_table(969) := '73742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D426164';
wwv_flow_api.g_varchar2_table(970) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030';
wwv_flow_api.g_varchar2_table(971) := '2030202335326166643620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920';
wwv_flow_api.g_varchar2_table(972) := '7B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(973) := '682D6368696C6428203237292061207B0A2020636F6C6F723A20233030303030303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(974) := '6D3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362333866303020696E7365743B0A7D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(975) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A62';
wwv_flow_api.g_varchar2_table(976) := '6F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203238292061207B0A2020636F6C6F723A20233032333434613B';
wwv_flow_api.g_varchar2_table(977) := '0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(978) := '703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337636337653920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(979) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(980) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261646765';
wwv_flow_api.g_varchar2_table(981) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030';
wwv_flow_api.g_varchar2_table(982) := '202365623630353920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B0A';
wwv_flow_api.g_varchar2_table(983) := '20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(984) := '6368696C6428203330292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(985) := '6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337353733636520696E7365743B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(986) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(987) := '6F723A20236666313434303B0A2020636F6C6F723A20236666313434303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(988) := '6D3A6E74682D6368696C6428203129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(989) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(990) := '66326435353B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D4261646765';
wwv_flow_api.g_varchar2_table(991) := '4C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233030366565363B0A2020636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(992) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(993) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(994) := '663B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(995) := '656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236536383630303B0A2020636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(996) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C';
wwv_flow_api.g_varchar2_table(997) := '75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(998) := '76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(999) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233337643535323B0A2020636F6C6F723A20233337';
wwv_flow_api.g_varchar2_table(1000) := '643535323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1001) := '6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1002) := '682D6368696C6428203429202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233037316630623B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1003) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1004) := '6F723A20233831383138373B0A2020636F6C6F723A20233831383138373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1005) := '6D3A6E74682D6368696C6428203529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1006) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A202338';
wwv_flow_api.g_varchar2_table(1007) := '65386539333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D4261646765';
wwv_flow_api.g_varchar2_table(1008) := '4C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233234396564323B0A2020636F6C6F723A20233234396564323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1009) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(1010) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(1011) := '663B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1012) := '656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236536623830303B0A2020636F6C6F723A20236536623830303B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1013) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C';
wwv_flow_api.g_varchar2_table(1014) := '75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1015) := '76616C75652061207B0A2020636F6C6F723A20233030303030303B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1016) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233431633066393B0A2020636F6C6F723A20233431';
wwv_flow_api.g_varchar2_table(1017) := '633066393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1018) := '6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1019) := '682D6368696C6428203829202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233032333935323B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1020) := '742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1021) := '6F723A20236666323331373B0A2020636F6C6F723A20236666323331373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1022) := '6D3A6E74682D6368696C6428203929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1023) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1024) := '66336233303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467';
wwv_flow_api.g_varchar2_table(1025) := '654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233434343164313B0A2020636F6C6F723A20233434343164313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1026) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1027) := '63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1028) := '666666663B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1029) := '2D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666336536323B0A2020636F6C6F723A20236666336536323B0A7D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(1030) := '4C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D77726170202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1031) := '742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467';
wwv_flow_api.g_varchar2_table(1032) := '654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_api.g_varchar2_table(1033) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233139383766663B0A2020636F6C';
wwv_flow_api.g_varchar2_table(1034) := '6F723A20233139383766663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E';
wwv_flow_api.g_varchar2_table(1035) := '742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1036) := '2D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(1037) := '2D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C7565207B0A2020';
wwv_flow_api.g_varchar2_table(1038) := '626F726465722D636F6C6F723A20236666613031393B0A2020636F6C6F723A20236666613031393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(1039) := '67654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_api.g_varchar2_table(1040) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1041) := '6E642D636F6C6F723A20236666616133333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1042) := '20313429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233562646337313B0A2020636F6C6F723A20233562646337313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E74';
wwv_flow_api.g_varchar2_table(1043) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E74';
wwv_flow_api.g_varchar2_table(1044) := '2D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76616C75652061207B0A';
wwv_flow_api.g_varchar2_table(1045) := '2020636F6C6F723A20233338346333633B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(1046) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233938393839633B0A2020636F6C6F723A20233938393839633B0A7D0A62';
wwv_flow_api.g_varchar2_table(1047) := '6F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D77726170';
wwv_flow_api.g_varchar2_table(1048) := '202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1049) := '20313529202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263';
wwv_flow_api.g_varchar2_table(1050) := '756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A202334';
wwv_flow_api.g_varchar2_table(1051) := '37623264663B0A2020636F6C6F723A20233437623264663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1052) := '6368696C642820313629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(1053) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233564626265';
wwv_flow_api.g_varchar2_table(1054) := '333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1055) := '742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666643131393B0A2020636F6C6F723A20236666643131393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1056) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263';
wwv_flow_api.g_varchar2_table(1057) := '756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A2023333333333333';
wwv_flow_api.g_varchar2_table(1058) := '3B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1059) := '6D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233632636266613B0A2020636F6C6F723A20233632636266613B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1060) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D7661';
wwv_flow_api.g_varchar2_table(1061) := '6C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1062) := '742D76616C75652061207B0A2020636F6C6F723A20233335363137353B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1063) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666346134303B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1064) := '236666346134303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D4261';
wwv_flow_api.g_varchar2_table(1065) := '6467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1066) := '6D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(1067) := '67654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C7565207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(1068) := '65722D636F6C6F723A20233635363364393B0A2020636F6C6F723A20233635363364393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1069) := '73742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1070) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1071) := '6F6C6F723A20233739373864653B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129';
wwv_flow_api.g_varchar2_table(1072) := '202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236462316133663B0A2020636F6C6F723A20236462316133663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D426164';
wwv_flow_api.g_varchar2_table(1073) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(1074) := '67654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C75652061207B0A2020636F';
wwv_flow_api.g_varchar2_table(1075) := '6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42';
wwv_flow_api.g_varchar2_table(1076) := '616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233030363263633B0A2020636F6C6F723A20233030363263633B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(1077) := '2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D77726170202E742D';
wwv_flow_api.g_varchar2_table(1078) := '42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229';
wwv_flow_api.g_varchar2_table(1079) := '202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C6172';
wwv_flow_api.g_varchar2_table(1080) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236363373730';
wwv_flow_api.g_varchar2_table(1081) := '303B0A2020636F6C6F723A20236363373730303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1082) := '642820323329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42';
wwv_flow_api.g_varchar2_table(1083) := '616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D';
wwv_flow_api.g_varchar2_table(1084) := '0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D7661';
wwv_flow_api.g_varchar2_table(1085) := '6C7565207B0A2020626F726465722D636F6C6F723A20233361623434663B0A2020636F6C6F723A20233361623434663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(1086) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C6172';
wwv_flow_api.g_varchar2_table(1087) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233036316330613B0A2020';
wwv_flow_api.g_varchar2_table(1088) := '6261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1089) := '682D6368696C642820323529202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233733373337373B0A2020636F6C6F723A20233733373337373B0A7D0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(1090) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C';
wwv_flow_api.g_varchar2_table(1091) := '0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D7661';
wwv_flow_api.g_varchar2_table(1092) := '6C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1093) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233261383962313B0A2020636F6C6F723A2023326138';
wwv_flow_api.g_varchar2_table(1094) := '3962313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1095) := '6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1096) := '682D6368696C642820323629202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1097) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1098) := '6F6C6F723A20236363613330303B0A2020636F6C6F723A20236363613330303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1099) := '74656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1100) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233030303030303B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1101) := '3A20236536623830303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D';
wwv_flow_api.g_varchar2_table(1102) := '42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233362616264643B0A2020636F6C6F723A20233362616264643B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1103) := '73742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1104) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1105) := '20233032333434613B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261646765';
wwv_flow_api.g_varchar2_table(1106) := '4C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236464323531623B0A2020636F6C6F723A20236464323531623B0A7D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1107) := '616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D77726170202E742D42616467';
wwv_flow_api.g_varchar2_table(1108) := '654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D';
wwv_flow_api.g_varchar2_table(1109) := '42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42';
wwv_flow_api.g_varchar2_table(1110) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233431343062353B0A20';
wwv_flow_api.g_varchar2_table(1111) := '20636F6C6F723A20233431343062353B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033';
wwv_flow_api.g_varchar2_table(1112) := '3029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261646765';
wwv_flow_api.g_varchar2_table(1113) := '4C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(1114) := '43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E742D43617264732D2D636F6C6F72697A6520';
wwv_flow_api.g_varchar2_table(1115) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1116) := '6C642820312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663630376520696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_api.g_varchar2_table(1117) := '6467654C6973742D6974656D3A6E74682D6368696C6428203229207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1118) := '2D6368696C64282032292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1119) := '777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333333935666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1120) := '6428203329207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033292061207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1121) := '723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1122) := '61646F773A2030202D38707820302030202366666161333320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1123) := '636F6C6F723A20233463643936343B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1124) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020302023326163';
wwv_flow_api.g_varchar2_table(1125) := '38343520696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(1126) := '43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1127) := '6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202361386138616320696E7365743B0A7D0A2E742D4361726473';
wwv_flow_api.g_varchar2_table(1128) := '2D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_api.g_varchar2_table(1129) := '6467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036';
wwv_flow_api.g_varchar2_table(1130) := '2920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335666263653420696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1131) := '73742D6974656D3A6E74682D6368696C6428203729207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1132) := '64282037292061207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D777261703A';
wwv_flow_api.g_varchar2_table(1133) := '686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202363636133303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829';
wwv_flow_api.g_varchar2_table(1134) := '207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0A2020636F6C6F723A202330';
wwv_flow_api.g_varchar2_table(1135) := '32333935323B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(1136) := '2030202D38707820302030202332386237663920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1137) := '3A20236666336233303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F';
wwv_flow_api.g_varchar2_table(1138) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020236666366236332069';
wwv_flow_api.g_varchar2_table(1139) := '6E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1140) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1141) := '2D6974656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202338313766653020696E7365743B0A7D0A2E742D43617264732D2D';
wwv_flow_api.g_varchar2_table(1142) := '636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D426164';
wwv_flow_api.g_varchar2_table(1143) := '67654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031';
wwv_flow_api.g_varchar2_table(1144) := '312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663861613020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1145) := '6973742D6974656D3A6E74682D6368696C642820313229207B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1146) := '696C6428203132292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D77';
wwv_flow_api.g_varchar2_table(1147) := '7261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336366166666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1148) := '2820313329207B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(1149) := '6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D';
wwv_flow_api.g_varchar2_table(1150) := '736861646F773A2030202D38707820302030202366663935303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1151) := '6E642D636F6C6F723A20233730653138333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0A2020636F6C6F723A20233338346333633B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(1152) := '43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030';
wwv_flow_api.g_varchar2_table(1153) := '202334366438356620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B';
wwv_flow_api.g_varchar2_table(1154) := '0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203135292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E74';
wwv_flow_api.g_varchar2_table(1155) := '2D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362666266633220696E7365743B0A7D0A';
wwv_flow_api.g_varchar2_table(1156) := '2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A2E742D43617264732D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1157) := '697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1158) := '682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333316139646220696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65';
wwv_flow_api.g_varchar2_table(1159) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1160) := '74656D3A6E74682D6368696C6428203137292061207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42';
wwv_flow_api.g_varchar2_table(1161) := '616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666363303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1162) := '3A6E74682D6368696C642820313829207B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829';
wwv_flow_api.g_varchar2_table(1163) := '2061207B0A2020636F6C6F723A20233335363137353B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F7665';
wwv_flow_api.g_varchar2_table(1164) := '72207B0A2020626F782D736861646F773A2030202D38707820302030202334396332666120696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0A';
wwv_flow_api.g_varchar2_table(1165) := '20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1166) := '6666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(1167) := '30202D38707820302030202366663932386320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1168) := '3A20233739373864653B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D63';
wwv_flow_api.g_varchar2_table(1169) := '6F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020302023613261316538';
wwv_flow_api.g_varchar2_table(1170) := '20696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A2E742D4361';
wwv_flow_api.g_varchar2_table(1171) := '7264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1172) := '73742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623536373220696E7365743B0A7D0A2E742D4361726473';
wwv_flow_api.g_varchar2_table(1173) := '2D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42';
wwv_flow_api.g_varchar2_table(1174) := '616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1175) := '2032322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202331613837666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467';
wwv_flow_api.g_varchar2_table(1176) := '654C6973742D6974656D3A6E74682D6368696C642820323329207B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1177) := '6368696C6428203233292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1178) := '2D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666130316120696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1179) := '6C642820323429207B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234292061207B0A202063';
wwv_flow_api.g_varchar2_table(1180) := '6F6C6F723A20233036316330613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F';
wwv_flow_api.g_varchar2_table(1181) := '782D736861646F773A2030202D38707820302030202336626430376320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1182) := '6F756E642D636F6C6F723A20233830383038343B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1183) := '742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030';
wwv_flow_api.g_varchar2_table(1184) := '2030202339613961396420696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0A20206261636B67726F756E642D636F6C6F723A20233266393963';
wwv_flow_api.g_varchar2_table(1185) := '363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A6520';
wwv_flow_api.g_varchar2_table(1186) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335326166643620696E7365743B0A';
wwv_flow_api.g_varchar2_table(1187) := '7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729207B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A2E742D43617264732D2D636F6C';
wwv_flow_api.g_varchar2_table(1188) := '6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1189) := '6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202362333866303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F7269';
wwv_flow_api.g_varchar2_table(1190) := '7A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1191) := '2D6974656D3A6E74682D6368696C6428203238292061207B0A2020636F6C6F723A20233032333434613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E74';
wwv_flow_api.g_varchar2_table(1192) := '2D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337636337653920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1193) := '656D3A6E74682D6368696C642820323929207B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_api.g_varchar2_table(1194) := '39292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A686F';
wwv_flow_api.g_varchar2_table(1195) := '766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623630353920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920';
wwv_flow_api.g_varchar2_table(1196) := '7B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0A2020636F6C6F723A202365';
wwv_flow_api.g_varchar2_table(1197) := '36653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F77';
wwv_flow_api.g_varchar2_table(1198) := '3A2030202D38707820302030202337353733636520696E7365743B0A7D0A2E752D436F6C6F7242472D2D31207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F7246472D2D31207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1199) := '3A20236666326435353B0A7D0A2E752D436F6C6F7242472D2D32207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F7246472D2D32207B0A2020636F6C6F723A20233030376166663B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1200) := '6F6C6F7242472D2D33207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F7246472D2D33207B0A2020636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F7242472D2D34207B0A2020626163';
wwv_flow_api.g_varchar2_table(1201) := '6B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F7246472D2D34207B0A2020636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F7242472D2D35207B0A20206261636B67726F756E642D636F6C6F723A202338';
wwv_flow_api.g_varchar2_table(1202) := '65386539333B0A7D0A2E752D436F6C6F7246472D2D35207B0A2020636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F7242472D2D36207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1203) := '46472D2D36207B0A2020636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F7242472D2D37207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F7246472D2D37207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1204) := '236666636330303B0A7D0A2E752D436F6C6F7242472D2D38207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F7246472D2D38207B0A2020636F6C6F723A20233561633866613B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1205) := '6F7242472D2D39207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F7246472D2D39207B0A2020636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F7242472D2D3130207B0A20206261636B';
wwv_flow_api.g_varchar2_table(1206) := '67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F7246472D2D3130207B0A2020636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F7242472D2D3131207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1207) := '6666353737373B0A7D0A2E752D436F6C6F7246472D2D3131207B0A2020636F6C6F723A20236666353737373B0A7D0A2E752D436F6C6F7242472D2D3132207B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1208) := '6C6F7246472D2D3132207B0A2020636F6C6F723A20233333393566663B0A7D0A2E752D436F6C6F7242472D2D3133207B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A2E752D436F6C6F7246472D2D3133207B0A202063';
wwv_flow_api.g_varchar2_table(1209) := '6F6C6F723A20236666616133333B0A7D0A2E752D436F6C6F7242472D2D3134207B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A2E752D436F6C6F7246472D2D3134207B0A2020636F6C6F723A20233730653138333B0A';
wwv_flow_api.g_varchar2_table(1210) := '7D0A2E752D436F6C6F7242472D2D3135207B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A2E752D436F6C6F7246472D2D3135207B0A2020636F6C6F723A20236135613561393B0A7D0A2E752D436F6C6F7242472D2D31';
wwv_flow_api.g_varchar2_table(1211) := '36207B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A2E752D436F6C6F7246472D2D3136207B0A2020636F6C6F723A20233564626265333B0A7D0A2E752D436F6C6F7242472D2D3137207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1212) := '642D636F6C6F723A20236666643633333B0A7D0A2E752D436F6C6F7246472D2D3137207B0A2020636F6C6F723A20236666643633333B0A7D0A2E752D436F6C6F7242472D2D3138207B0A20206261636B67726F756E642D636F6C6F723A20233762643366';
wwv_flow_api.g_varchar2_table(1213) := '623B0A7D0A2E752D436F6C6F7246472D2D3138207B0A2020636F6C6F723A20233762643366623B0A7D0A2E752D436F6C6F7242472D2D3139207B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A2E752D436F6C6F724647';
wwv_flow_api.g_varchar2_table(1214) := '2D2D3139207B0A2020636F6C6F723A20236666363235393B0A7D0A2E752D436F6C6F7242472D2D3230207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A2E752D436F6C6F7246472D2D3230207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1215) := '20233739373864653B0A7D0A2E752D436F6C6F7242472D2D3231207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A2E752D436F6C6F7246472D2D3231207B0A2020636F6C6F723A20236536323934643B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1216) := '436F6C6F7242472D2D3232207B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A2E752D436F6C6F7246472D2D3232207B0A2020636F6C6F723A20233030366565363B0A7D0A2E752D436F6C6F7242472D2D3233207B0A20';
wwv_flow_api.g_varchar2_table(1217) := '206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A2E752D436F6C6F7246472D2D3233207B0A2020636F6C6F723A20236536383630303B0A7D0A2E752D436F6C6F7242472D2D3234207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1218) := '6F723A20233434633335613B0A7D0A2E752D436F6C6F7246472D2D3234207B0A2020636F6C6F723A20233434633335613B0A7D0A2E752D436F6C6F7242472D2D3235207B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A';
wwv_flow_api.g_varchar2_table(1219) := '2E752D436F6C6F7246472D2D3235207B0A2020636F6C6F723A20233830383038343B0A7D0A2E752D436F6C6F7242472D2D3236207B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A2E752D436F6C6F7246472D2D323620';
wwv_flow_api.g_varchar2_table(1220) := '7B0A2020636F6C6F723A20233266393963363B0A7D0A2E752D436F6C6F7242472D2D3237207B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A2E752D436F6C6F7246472D2D3237207B0A2020636F6C6F723A2023653662';
wwv_flow_api.g_varchar2_table(1221) := '3830303B0A7D0A2E752D436F6C6F7242472D2D3238207B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A2E752D436F6C6F7246472D2D3238207B0A2020636F6C6F723A20233531623465313B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1222) := '42472D2D3239207B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A2E752D436F6C6F7246472D2D3239207B0A2020636F6C6F723A20236536333532623B0A7D0A2E752D436F6C6F7242472D2D3330207B0A20206261636B';
wwv_flow_api.g_varchar2_table(1223) := '67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E752D436F6C6F7246472D2D3330207B0A2020636F6C6F723A20233466346463313B0A7D0A0A2E752D436F6C6F722D312D42472D2D747874207B0A2020636F6C6F723A2023666632643535';
wwv_flow_api.g_varchar2_table(1224) := '3B0A7D0A2E752D436F6C6F722D312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D42472D2D66696C6C207B0A202066696C6C3A20236666326435353B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1225) := '6F6C6F722D312D42472D2D6272207B0A20207374726F6B653A20236666326435353B0A2020626F726465722D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D46472D2D747874207B0A2020636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1226) := '0A7D0A2E752D436F6C6F722D312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1227) := '6C6F722D312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D42472D2D747874207B0A2020636F6C6F723A20233030376166663B0A';
wwv_flow_api.g_varchar2_table(1228) := '7D0A2E752D436F6C6F722D322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D42472D2D66696C6C207B0A202066696C6C3A20233030376166663B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1229) := '6F722D322D42472D2D6272207B0A20207374726F6B653A20233030376166663B0A2020626F726465722D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(1230) := '0A2E752D436F6C6F722D322D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1231) := '722D322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D332D42472D2D747874207B0A2020636F6C6F723A20236666393530303B0A7D0A';
wwv_flow_api.g_varchar2_table(1232) := '2E752D436F6C6F722D332D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F722D332D42472D2D66696C6C207B0A202066696C6C3A20236666393530303B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1233) := '2D332D42472D2D6272207B0A20207374726F6B653A20236666393530303B0A2020626F726465722D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F722D332D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1234) := '752D436F6C6F722D332D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1235) := '332D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D342D42472D2D747874207B0A2020636F6C6F723A20233463643936343B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1236) := '2D436F6C6F722D342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F722D342D42472D2D66696C6C207B0A202066696C6C3A20233463643936343B0A7D0A2E752D436F6C6F722D34';
wwv_flow_api.g_varchar2_table(1237) := '2D42472D2D6272207B0A20207374726F6B653A20233463643936343B0A2020626F726465722D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F722D342D46472D2D747874207B0A2020636F6C6F723A20233037316630623B0A7D0A2E752D';
wwv_flow_api.g_varchar2_table(1238) := '436F6C6F722D342D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233037316630623B0A7D0A2E752D436F6C6F722D342D46472D2D66696C6C207B0A202066696C6C3A20233037316630623B0A7D0A2E752D436F6C6F722D342D';
wwv_flow_api.g_varchar2_table(1239) := '46472D2D6272207B0A20207374726F6B653A20233037316630623B0A2020626F726465722D636F6C6F723A20233037316630623B0A7D0A2E752D436F6C6F722D352D42472D2D747874207B0A2020636F6C6F723A20233865386539333B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1240) := '6F6C6F722D352D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F722D352D42472D2D66696C6C207B0A202066696C6C3A20233865386539333B0A7D0A2E752D436F6C6F722D352D42';
wwv_flow_api.g_varchar2_table(1241) := '472D2D6272207B0A20207374726F6B653A20233865386539333B0A2020626F726465722D636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F722D352D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1242) := '6C6F722D352D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D352D4647';
wwv_flow_api.g_varchar2_table(1243) := '2D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D362D42472D2D747874207B0A2020636F6C6F723A20233334616164633B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1244) := '6F722D362D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F722D362D42472D2D66696C6C207B0A202066696C6C3A20233334616164633B0A7D0A2E752D436F6C6F722D362D42472D';
wwv_flow_api.g_varchar2_table(1245) := '2D6272207B0A20207374726F6B653A20233334616164633B0A2020626F726465722D636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F722D362D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1246) := '722D362D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D362D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D362D46472D2D';
wwv_flow_api.g_varchar2_table(1247) := '6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D372D42472D2D747874207B0A2020636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1248) := '2D372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F722D372D42472D2D66696C6C207B0A202066696C6C3A20236666636330303B0A7D0A2E752D436F6C6F722D372D42472D2D62';
wwv_flow_api.g_varchar2_table(1249) := '72207B0A20207374726F6B653A20236666636330303B0A2020626F726465722D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F722D372D46472D2D747874207B0A2020636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1250) := '372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F722D372D46472D2D66696C6C207B0A202066696C6C3A20233030303030303B0A7D0A2E752D436F6C6F722D372D46472D2D6272';
wwv_flow_api.g_varchar2_table(1251) := '207B0A20207374726F6B653A20233030303030303B0A2020626F726465722D636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F722D382D42472D2D747874207B0A2020636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D38';
wwv_flow_api.g_varchar2_table(1252) := '2D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D382D42472D2D66696C6C207B0A202066696C6C3A20233561633866613B0A7D0A2E752D436F6C6F722D382D42472D2D627220';
wwv_flow_api.g_varchar2_table(1253) := '7B0A20207374726F6B653A20233561633866613B0A2020626F726465722D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D382D46472D2D747874207B0A2020636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D382D';
wwv_flow_api.g_varchar2_table(1254) := '46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D382D46472D2D66696C6C207B0A202066696C6C3A20233032333935323B0A7D0A2E752D436F6C6F722D382D46472D2D6272207B';
wwv_flow_api.g_varchar2_table(1255) := '0A20207374726F6B653A20233032333935323B0A2020626F726465722D636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D392D42472D2D747874207B0A2020636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D42';
wwv_flow_api.g_varchar2_table(1256) := '472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D42472D2D66696C6C207B0A202066696C6C3A20236666336233303B0A7D0A2E752D436F6C6F722D392D42472D2D6272207B0A';
wwv_flow_api.g_varchar2_table(1257) := '20207374726F6B653A20236666336233303B0A2020626F726465722D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D392D4647';
wwv_flow_api.g_varchar2_table(1258) := '2D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D392D46472D2D6272207B0A20';
wwv_flow_api.g_varchar2_table(1259) := '207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31302D42472D2D747874207B0A2020636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D31302D42';
wwv_flow_api.g_varchar2_table(1260) := '472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D31302D42472D2D66696C6C207B0A202066696C6C3A20233538353664363B0A7D0A2E752D436F6C6F722D31302D42472D2D627220';
wwv_flow_api.g_varchar2_table(1261) := '7B0A20207374726F6B653A20233538353664363B0A2020626F726465722D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D31302D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31';
wwv_flow_api.g_varchar2_table(1262) := '302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31302D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31302D46472D2D';
wwv_flow_api.g_varchar2_table(1263) := '6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31312D42472D2D747874207B0A2020636F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1264) := '722D31312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F722D31312D42472D2D66696C6C207B0A202066696C6C3A20236639303032663B0A7D0A2E752D436F6C6F722D31312D42';
wwv_flow_api.g_varchar2_table(1265) := '472D2D6272207B0A20207374726F6B653A20236639303032663B0A2020626F726465722D636F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F722D31312D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1266) := '6F6C6F722D31312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31';
wwv_flow_api.g_varchar2_table(1267) := '312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D42472D2D747874207B0A2020636F6C6F723A20233030363263633B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1268) := '752D436F6C6F722D31322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D42472D2D66696C6C207B0A202066696C6C3A20233030363263633B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1269) := '722D31322D42472D2D6272207B0A20207374726F6B653A20233030363263633B0A2020626F726465722D636F6C6F723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(1270) := '7D0A2E752D436F6C6F722D31322D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1271) := '6F6C6F722D31322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31332D42472D2D747874207B0A2020636F6C6F723A20236363373730';
wwv_flow_api.g_varchar2_table(1272) := '303B0A7D0A2E752D436F6C6F722D31332D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D42472D2D66696C6C207B0A202066696C6C3A20236363373730303B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1273) := '752D436F6C6F722D31332D42472D2D6272207B0A20207374726F6B653A20236363373730303B0A2020626F726465722D636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D46472D2D747874207B0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1274) := '666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(1275) := '7D0A2E752D436F6C6F722D31332D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31342D42472D2D747874207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1276) := '233261633834353B0A7D0A2E752D436F6C6F722D31342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F722D31342D42472D2D66696C6C207B0A202066696C6C3A20233261633834';
wwv_flow_api.g_varchar2_table(1277) := '353B0A7D0A2E752D436F6C6F722D31342D42472D2D6272207B0A20207374726F6B653A20233261633834353B0A2020626F726465722D636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F722D31342D46472D2D747874207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1278) := '723A20233130343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D66696C6C207B0A202066696C6C3A20233130';
wwv_flow_api.g_varchar2_table(1279) := '343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D6272207B0A20207374726F6B653A20233130343931393B0A2020626F726465722D636F6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31352D42472D2D747874207B0A202063';
wwv_flow_api.g_varchar2_table(1280) := '6F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D66696C6C207B0A202066696C6C3A20';
wwv_flow_api.g_varchar2_table(1281) := '233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D6272207B0A20207374726F6B653A20233734373437613B0A2020626F726465722D636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D46472D2D747874207B0A';
wwv_flow_api.g_varchar2_table(1282) := '2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D66696C6C207B0A202066696C';
wwv_flow_api.g_varchar2_table(1283) := '6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D42472D2D747874';
wwv_flow_api.g_varchar2_table(1284) := '207B0A2020636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D66696C6C207B0A2020';
wwv_flow_api.g_varchar2_table(1285) := '66696C6C3A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D6272207B0A20207374726F6B653A20233231386562643B0A2020626F726465722D636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D46472D2D';
wwv_flow_api.g_varchar2_table(1286) := '747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D66696C6C207B';
wwv_flow_api.g_varchar2_table(1287) := '0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31372D42';
wwv_flow_api.g_varchar2_table(1288) := '472D2D747874207B0A2020636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D66696C';
wwv_flow_api.g_varchar2_table(1289) := '6C207B0A202066696C6C3A20236363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D6272207B0A20207374726F6B653A20236363613330303B0A2020626F726465722D636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D31';
wwv_flow_api.g_varchar2_table(1290) := '372D46472D2D747874207B0A2020636F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D';
wwv_flow_api.g_varchar2_table(1291) := '66696C6C207B0A202066696C6C3A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D6272207B0A20207374726F6B653A20233161316131613B0A2020626F726465722D636F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1292) := '722D31382D42472D2D747874207B0A2020636F6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D42';
wwv_flow_api.g_varchar2_table(1293) := '472D2D66696C6C207B0A202066696C6C3A20233238623766393B0A7D0A2E752D436F6C6F722D31382D42472D2D6272207B0A20207374726F6B653A20233238623766393B0A2020626F726465722D636F6C6F723A20233238623766393B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1294) := '6F6C6F722D31382D46472D2D747874207B0A2020636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D31382D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D31';
wwv_flow_api.g_varchar2_table(1295) := '382D46472D2D66696C6C207B0A202066696C6C3A20233034356338343B0A7D0A2E752D436F6C6F722D31382D46472D2D6272207B0A20207374726F6B653A20233034356338343B0A2020626F726465722D636F6C6F723A20233034356338343B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1296) := '752D436F6C6F722D31392D42472D2D747874207B0A2020636F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F722D31392D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1297) := '722D31392D42472D2D66696C6C207B0A202066696C6C3A20236663306430303B0A7D0A2E752D436F6C6F722D31392D42472D2D6272207B0A20207374726F6B653A20236663306430303B0A2020626F726465722D636F6C6F723A20236663306430303B0A';
wwv_flow_api.g_varchar2_table(1298) := '7D0A2E752D436F6C6F722D31392D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31392D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1299) := '6F6C6F722D31392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31392D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(1300) := '663B0A7D0A2E752D436F6C6F722D32302D42472D2D747874207B0A2020636F6C6F723A20233333333163383B0A7D0A2E752D436F6C6F722D32302D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233333333163383B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1301) := '752D436F6C6F722D32302D42472D2D66696C6C207B0A202066696C6C3A20233333333163383B0A7D0A2E752D436F6C6F722D32302D42472D2D6272207B0A20207374726F6B653A20233333333163383B0A2020626F726465722D636F6C6F723A20233333';
wwv_flow_api.g_varchar2_table(1302) := '333163383B0A7D0A2E752D436F6C6F722D32302D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(1303) := '7D0A2E752D436F6C6F722D32302D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32302D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1304) := '236666666666663B0A7D0A2E752D436F6C6F722D32312D42472D2D747874207B0A2020636F6C6F723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666393361';
wwv_flow_api.g_varchar2_table(1305) := '383B0A7D0A2E752D436F6C6F722D32312D42472D2D66696C6C207B0A202066696C6C3A20236666393361383B0A7D0A2E752D436F6C6F722D32312D42472D2D6272207B0A20207374726F6B653A20236666393361383B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1306) := '723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1307) := '666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1308) := '6F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D42472D2D747874207B0A2020636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1309) := '233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D66696C6C207B0A202066696C6C3A20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D6272207B0A20207374726F6B653A20233636616666663B0A2020626F726465';
wwv_flow_api.g_varchar2_table(1310) := '722D636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F722D32322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1311) := '723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F';
wwv_flow_api.g_varchar2_table(1312) := '726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D42472D2D747874207B0A2020636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D6267207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1313) := '6F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D66696C6C207B0A202066696C6C3A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D6272207B0A20207374726F6B653A20236666626636363B0A20';
wwv_flow_api.g_varchar2_table(1314) := '20626F726465722D636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D6267207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1315) := '642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D6272207B0A20207374726F6B653A2023666666666666';
wwv_flow_api.g_varchar2_table(1316) := '3B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32342D42472D2D747874207B0A2020636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D6267207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1317) := '6F756E642D636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D66696C6C207B0A202066696C6C3A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D6272207B0A20207374726F6B653A2023613065';
wwv_flow_api.g_varchar2_table(1318) := '6261643B0A2020626F726465722D636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D46472D2D747874207B0A2020636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D6267207B0A2020626163';
wwv_flow_api.g_varchar2_table(1319) := '6B67726F756E642D636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D66696C6C207B0A202066696C6C3A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D6272207B0A20207374726F6B653A2023';
wwv_flow_api.g_varchar2_table(1320) := '3139373332383B0A2020626F726465722D636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32352D42472D2D747874207B0A2020636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D6267207B0A2020';
wwv_flow_api.g_varchar2_table(1321) := '6261636B67726F756E642D636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D66696C6C207B0A202066696C6C3A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D6272207B0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1322) := '3A20236332633263353B0A2020626F726465722D636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D6267207B';
wwv_flow_api.g_varchar2_table(1323) := '0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D6272207B0A2020737472';
wwv_flow_api.g_varchar2_table(1324) := '6F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D42472D2D747874207B0A2020636F6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D62';
wwv_flow_api.g_varchar2_table(1325) := '67207B0A20206261636B67726F756E642D636F6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D66696C6C207B0A202066696C6C3A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D6272207B0A2020';
wwv_flow_api.g_varchar2_table(1326) := '7374726F6B653A20233862636565623B0A2020626F726465722D636F6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D4647';
wwv_flow_api.g_varchar2_table(1327) := '2D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32362D46472D2D6272207B';
wwv_flow_api.g_varchar2_table(1328) := '0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32372D42472D2D747874207B0A2020636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D3237';
wwv_flow_api.g_varchar2_table(1329) := '2D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D32372D42472D2D66696C6C207B0A202066696C6C3A20236666653036363B0A7D0A2E752D436F6C6F722D32372D42472D2D62';
wwv_flow_api.g_varchar2_table(1330) := '72207B0A20207374726F6B653A20236666653036363B0A2020626F726465722D636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D32372D46472D2D747874207B0A2020636F6C6F723A20233333333333333B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1331) := '2D32372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233333333333333B0A7D0A2E752D436F6C6F722D32372D46472D2D66696C6C207B0A202066696C6C3A20233333333333333B0A7D0A2E752D436F6C6F722D32372D4647';
wwv_flow_api.g_varchar2_table(1332) := '2D2D6272207B0A20207374726F6B653A20233333333333333B0A2020626F726465722D636F6C6F723A20233333333333333B0A7D0A2E752D436F6C6F722D32382D42472D2D747874207B0A2020636F6C6F723A20236264653966643B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1333) := '6C6F722D32382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236264653966643B0A7D0A2E752D436F6C6F722D32382D42472D2D66696C6C207B0A202066696C6C3A20236264653966643B0A7D0A2E752D436F6C6F722D3238';
wwv_flow_api.g_varchar2_table(1334) := '2D42472D2D6272207B0A20207374726F6B653A20236264653966643B0A2020626F726465722D636F6C6F723A20236264653966643B0A7D0A2E752D436F6C6F722D32382D46472D2D747874207B0A2020636F6C6F723A20233035376562363B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1335) := '2D436F6C6F722D32382D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233035376562363B0A7D0A2E752D436F6C6F722D32382D46472D2D66696C6C207B0A202066696C6C3A20233035376562363B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1336) := '2D32382D46472D2D6272207B0A20207374726F6B653A20233035376562363B0A2020626F726465722D636F6C6F723A20233035376562363B0A7D0A2E752D436F6C6F722D32392D42472D2D747874207B0A2020636F6C6F723A20236666396339363B0A7D';
wwv_flow_api.g_varchar2_table(1337) := '0A2E752D436F6C6F722D32392D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D42472D2D66696C6C207B0A202066696C6C3A20236666396339363B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1338) := '6C6F722D32392D42472D2D6272207B0A20207374726F6B653A20236666396339363B0A2020626F726465722D636F6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D46472D2D747874207B0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1339) := '3B0A7D0A2E752D436F6C6F722D32392D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1340) := '2D436F6C6F722D32392D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D33302D42472D2D747874207B0A2020636F6C6F723A2023613961';
wwv_flow_api.g_varchar2_table(1341) := '3865613B0A7D0A2E752D436F6C6F722D33302D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D66696C6C207B0A202066696C6C3A20236139613865613B0A7D';
wwv_flow_api.g_varchar2_table(1342) := '0A2E752D436F6C6F722D33302D42472D2D6272207B0A20207374726F6B653A20236139613865613B0A2020626F726465722D636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D46472D2D747874207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1343) := '6666666666663B0A7D0A2E752D436F6C6F722D33302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D33302D46472D2D66696C6C207B0A202066696C6C3A2023666666666666';
wwv_flow_api.g_varchar2_table(1344) := '3B0A7D0A2E752D436F6C6F722D33302D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D666F6375736564207B0A2020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(1345) := '3020302031707820236666326435352C2030203020317078203070782072676261283235352C2034352C2038352C20302E35292021696D706F7274616E743B0A20206F75746C696E653A206E6F6E653B0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(30098844539464565)
,p_theme_id=>42
,p_file_name=>'7645349820768354.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90030991164172359)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90031137020172363)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90031349287172363)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90032589552172366)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90032782634172366)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90033511615172368)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90033914325172368)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90034488508172368)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90035122742172368)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90035329787172379)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90036188480172380)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90037770480172382)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90039183914172384)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90042663754172388)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90042838452172388)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90043287007172388)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90043718540172388)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90044259687172388)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90044835961172391)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90045111791172391)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90046721189172391)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90047430664172391)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90047636180172391)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90048372449172393)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90048676786172393)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90049188636172393)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90049532052172393)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90049701732172393)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90050512635172396)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90052372794172401)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90053222618172401)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90054184103172402)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90054861615172402)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90055233037172402)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90055917364172402)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90056536601172405)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90058995814172409)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90060075659172413)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90061261682172419)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90062296864172435)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90062459135172435)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90062660961172435)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90062848259172435)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90063035447172435)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90063526149172437)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90064232388172438)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90064548964172438)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90064786910172438)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90065004181172438)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90065166437172438)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90065488723172438)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(90065793243172438)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90030908091172357)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(90030649711172349)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90031106750172362)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90030649711172349)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(90030991164172359)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90031252335172363)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90030649711172349)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(90031137020172363)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90031486351172365)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90030649711172349)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(90031349287172363)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90031534019172365)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90030649711172349)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(90030991164172359)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90031695956172365)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90030649711172349)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(90031137020172363)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90031756961172365)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90030649711172349)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(90030991164172359)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90031875245172365)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90030649711172349)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(90031137020172363)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90031981210172365)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90030649711172349)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(90030991164172359)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90032066354172365)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90030649711172349)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(90031349287172363)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90032716439172366)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(90032278044172366)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(90032589552172366)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90032858798172366)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(90032278044172366)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(90032782634172366)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90033032819172366)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(90032278044172366)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(90032589552172366)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90033100204172366)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(90032278044172366)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(90032782634172366)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90033618501172368)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(90033511615172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90033723850172368)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(90033511615172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90033825552172368)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(90033511615172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90033950159172368)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(90033914325172368)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90034045943172368)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(90033914325172368)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90034218396172368)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(90033914325172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90034235486172368)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(90033511615172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90034340724172368)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(90033914325172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90034625162172368)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90034732582172368)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90034811877172368)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90034910651172368)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90035017145172368)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90035136882172368)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(90035122742172368)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90035392090172379)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(90035329787172379)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90035476192172380)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(90035122742172368)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90035623680172380)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90035677121172380)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(90032589552172366)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90035756629172380)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90035848329172380)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(90035329787172379)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90036020897172380)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90036073267172380)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90036314156172380)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(90036188480172380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90036338566172380)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(90036188480172380)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90036482970172380)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90033185878172366)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(90032589552172366)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90036906422172380)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(90033914325172368)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90037012642172380)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(90033914325172368)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90037095593172380)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(90033914325172368)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90037135948172380)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(90033914325172368)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90037248544172380)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90037359150172380)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90037522556172380)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90037585730172380)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90037696119172382)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90037918611172382)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(90037770480172382)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90037983173172384)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(90037770480172382)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038083418172384)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(90035329787172379)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038174440172384)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038277821172384)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(90032589552172366)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038428845172384)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(90032589552172366)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038446965172384)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(90035329787172379)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90038579873172384)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90036574481172380)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(90032589552172366)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90039072003172384)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038866049172384)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90039314433172384)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038866049172384)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(90039183914172384)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90039364667172384)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90038866049172384)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(90039183914172384)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90039440329172384)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038866049172384)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90039604426172384)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90038866049172384)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90039720366172384)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90038866049172384)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(90039183914172384)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90039837253172385)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90039782612172384)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90040009054172385)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90039782612172384)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90040598080172385)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(90033914325172368)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90040706771172385)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(90033914325172368)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90040774259172385)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(90033914325172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90040891852172385)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(90033914325172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90040938136172385)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90041102654172385)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90041170911172385)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90041273316172385)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90041396396172385)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(90034488508172368)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90041460647172385)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(90035122742172368)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90041547755172387)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(90035329787172379)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90041660750172387)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(90035122742172368)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90041800032172387)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90041838324172387)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(90032589552172366)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90041972888172387)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(90032589552172366)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90042085173172387)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(90035329787172379)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90042186896172387)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90042279401172388)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90040252066172385)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(90032589552172366)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90042793603172388)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90042405446172388)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(90042663754172388)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90043000018172388)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90042405446172388)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(90042838452172388)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90043051953172388)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90042405446172388)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90043208575172388)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90042405446172388)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(90042838452172388)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90043340002172388)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90042405446172388)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(90043287007172388)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90043484113172388)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90042405446172388)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(90043287007172388)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90043798325172388)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(90043608140172388)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(90043718540172388)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90043892815172388)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(90043608140172388)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90044031327172388)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(90043608140172388)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(90043718540172388)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90044413068172388)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(90044056832172388)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(90044259687172388)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90044483312172388)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90044056832172388)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(90044259687172388)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90044593502172388)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(90044056832172388)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90044965328172391)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(90044835961172391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90045214717172391)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90045246429172391)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(90044835961172391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90045352486172391)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90045488689172391)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(90044835961172391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90045552714172391)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90045668225172391)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90045763487172391)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(90044835961172391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90045842440172391)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(90044835961172391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90046009078172391)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90046039795172391)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90046224951172391)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90046305568172391)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90046372333172391)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90044785712172390)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90046557464172391)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90046782941172391)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(90046721189172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90046910212172391)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90046994579172391)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(90046721189172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90047038663172391)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90047169925172391)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(90046721189172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90047330662172391)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90047506573172391)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(90047430664172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90047602855172391)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(90047430664172391)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90047817894172391)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(90047636180172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90047918560172391)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(90047636180172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90048019363172391)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(90047430664172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90048058979172393)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90048223759172393)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(90046721189172391)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90048291543172393)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90048465594172393)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90046473592172391)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(90048372449172393)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90048800484172393)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90048547726172393)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(90048676786172393)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90048878889172393)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90048547726172393)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(90048676786172393)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90049274740172393)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90049074035172393)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(90049188636172393)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90049401881172393)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90049074035172393)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(90049188636172393)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90049541250172393)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90049074035172393)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(90049532052172393)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90049749861172393)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90049074035172393)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(90049701732172393)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90049899289172393)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90049074035172393)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(90049701732172393)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90049943010172393)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(90049074035172393)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(90049701732172393)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90050044411172393)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90049074035172393)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(90049532052172393)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90050193160172393)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90049074035172393)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90050299742172393)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90049074035172393)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(90049701732172393)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90050623224172396)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90050425146172393)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(90050512635172396)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90050683278172396)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90050425146172393)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(90050512635172396)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90050786871172396)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90050425146172393)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(90050512635172396)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90050926960172396)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90050425146172393)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90050948048172396)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90050425146172393)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90051063870172396)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(90050425146172393)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(90050512635172396)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90051195632172396)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(90050425146172393)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(90050512635172396)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90051270487172396)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(90050425146172393)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(90050512635172396)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90051492033172396)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(90051374369172396)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(90050512635172396)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90051575101172396)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90051374369172396)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(90050512635172396)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90051677830172396)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90051374369172396)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(90050512635172396)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90051753599172396)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(90051374369172396)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90051922475172396)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(90051374369172396)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(90045111791172391)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90051943890172396)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(90051374369172396)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(90050512635172396)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90052094864172396)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(90051374369172396)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(90050512635172396)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90052198048172396)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(90051374369172396)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(90050512635172396)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90052512104172401)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90052613484172401)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90052664097172401)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90052781284172401)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90052850367172401)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90053024033172401)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90053113753172401)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90053312958172401)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(90053222618172401)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90053345517172401)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(90053222618172401)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90053462257172401)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90053542727172401)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(90053222618172401)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90053705373172401)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90053777446172401)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(90053222618172401)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90053901425172402)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(90052300708172401)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(90053222618172401)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90054041967172402)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90054264165172402)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(90054184103172402)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90054421288172402)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90054482661172402)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(90054184103172402)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90054555109172402)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90054728029172402)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(90054184103172402)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90054815827172402)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90054989995172402)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(90054861615172402)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90055088016172402)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(90054861615172402)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90055237654172402)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(90055233037172402)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90055432500172402)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(90055233037172402)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90055454960172402)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(90054861615172402)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90055538915172402)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90055658030172402)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(90054184103172402)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90055771329172402)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90056003330172402)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(90055917364172402)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90056210334172405)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90056088137172402)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(90054861615172402)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90056259256172405)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90056088137172402)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90056358675172405)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90056088137172402)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90056461578172405)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90056088137172402)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90056719851172405)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90056088137172402)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(90056536601172405)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90056772024172407)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90056088137172402)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(90056536601172405)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90056981519172407)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90056897165172407)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90057037369172407)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90056897165172407)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90057222090172407)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90056897165172407)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90057304603172407)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(90056897165172407)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90057423325172407)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90056897165172407)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90057528323172407)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90056897165172407)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90057602073172407)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90056897165172407)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90057721360172407)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(90056897165172407)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90057862928172407)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(90057809270172407)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90057979456172407)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90057809270172407)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90058045722172407)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90057809270172407)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90058153585172407)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90057809270172407)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90058683272172409)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90058585946172409)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(90055233037172402)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90058735788172409)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(90058585946172409)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(90052372794172401)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90058915695172409)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90058585946172409)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(90055233037172402)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90059080310172409)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90058585946172409)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(90058995814172409)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90059167184172409)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90058585946172409)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(90054861615172402)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90059246068172409)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90058585946172409)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(90054861615172402)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90059424521172409)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(90058585946172409)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(90058995814172409)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90059550079172412)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(90059468789172412)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90059695440172412)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(90059468789172412)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90059784302172412)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(90059468789172412)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90059915232172412)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(90059468789172412)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90060141069172413)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(90060001286172412)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(90060075659172413)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90060281038172413)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(90060001286172412)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(90060075659172413)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90060337061172413)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(90060001286172412)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(90060075659172413)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90061360237172419)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(90061150223172419)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(90061261682172419)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90061500367172419)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(90061150223172419)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(90061261682172419)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90062406234172435)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(90062296864172435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90062545283172435)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(90062459135172435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90062737628172435)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(90062660961172435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90063025492172435)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(90062848259172435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90063150232172435)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(90063035447172435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90063262403172437)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(90062459135172435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90063372855172437)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(90062660961172435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90063609368172437)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(90063526149172437)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90063698980172438)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(90063526149172437)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90063770456172438)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(90063526149172437)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90063917199172438)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(90062296864172435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90064025152172438)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(90063035447172435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90064109856172438)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(90062848259172435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90064284699172438)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(90064232388172438)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90064333482172438)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(90062296864172435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90064513472172438)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(90062296864172435)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90064638230172438)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(90064548964172438)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90064909792172438)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(90064786910172438)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90065045617172438)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(90065004181172438)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90065242995172438)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(90065166437172438)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90065413810172438)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(90065166437172438)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90065597799172438)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(90065488723172438)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90065726420172438)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(90064786910172438)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90065866111172438)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(90065793243172438)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90066022488172438)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(90066063234172438)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(90065793243172438)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(15685399339126036)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(22609193560650411)
,p_name=>'RIAD'
,p_scheme_type=>'NATIVE_LDAP'
,p_attribute_01=>'ri-dc01.hq.river-island.com'
,p_attribute_02=>'389'
,p_attribute_03=>'NO_SSL'
,p_attribute_04=>'HQ\%LDAP_USER%'
,p_attribute_05=>'Y'
,p_attribute_08=>'STD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(90066443089172448)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/region_type/com_planetapex_circliful_gauge
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(30582562946901875)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.PLANETAPEX.CIRCLIFUL_GAUGE'
,p_display_name=>'Circliful Gauge'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.PLANETAPEX.CIRCLIFUL_GAUGE'),'')
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#js/jquery.circliful.min.js',
'#PLUGIN_FILES#js/circlifulGauge.min.js'))
,p_css_file_urls=>'#PLUGIN_FILES#css/jquery.circliful.min.css'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
'  /****************************************************************************************',
'  ****************************************************************************************',
'  **  Plugin      : Circliful Gauge',
'  **  InternalName: COM.PLANETAPEX.CIRCLIFUL_GUAGE',
'  **  Author      : M.Yasir Ali Shah',
'  **  Date        : Saturday, April 29, 2017',
'  **  Version     : 1.0',
'  **  Description : The plugin is will show Percentage Graph',
'  **  Modification:',
'  **  Change Log  1) 1.0 - Initial Release -                                 ',
'  **  gitHub Repo : https://github.com/planetapex/apex-plugin-circlifulGauge',
'  **  Website     : https://apexfusion.blogspot.com/  **  ',
'  ****************************************************************************************',
'  ****************************************************************************************/',
'',
'  g_title_col   constant number(1) := 1;',
'  g_percent_col constant number(1) := 2;',
'  g_target_col  constant number(1) := 3;',
'  g_icon_col    constant number(1) := 4;',
'  g_dispVal_col constant number(1) := 5;',
'  -- g_value_col   constant number(1) := 3;',
'',
'  FUNCTION f_yn_2_truefalse(p_val IN VARCHAR2) RETURN boolean AS',
'  BEGIN',
'    RETURN case NVL(p_val, ''N'') when ''Y'' then true else false end;',
'  END f_yn_2_truefalse;',
'',
'  function f_render(p_region              in apex_plugin.t_region,',
'                    p_plugin              in apex_plugin.t_plugin,',
'                    p_is_printer_friendly in boolean)',
'    return apex_plugin.t_region_render_result is',
'    l_render_result apex_plugin.t_region_render_result;',
'  ',
'    -- Region Plugin Attributes ',
'    -----------------------------------------',
'    subtype attr is p_region.attribute_01%type;',
'  ',
'    -- atr_start_row boolean := f_yn_2_truefalse(p_region.attribute_0);',
'  ',
'    atr_templ INTEGER := TO_NUMBER(p_region.attribute_02);',
'  ',
'    l_html    varchar2(32767);',
'    l_js_code varchar2(32767);',
'    v_Options varchar2(32767); --Options per Chart',
'  ',
'  begin',
'  ',
' /*   apex_css.add_file(p_name      => ''jquery.circliful'',',
'                      p_directory => apex_application.g_image_prefix ||',
'                                     ''libraries/circa/css/'');*/',
'  ',
'    apex_json.initialize_clob_output;',
'    apex_json.open_object; --{',
'  ',
'    apex_json.open_array(''chart'');',
'    apex_json.open_object;',
'    apex_json.close_object;',
'    apex_json.close_array;',
'  ',
'    apex_json.write(''ajaxIdentifier'', apex_plugin.get_ajax_identifier);',
'    apex_json.write(''pageItems'',',
'                    apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit));',
'    apex_json.write(''templateNo'', atr_templ);',
'    apex_json.write(''noDataFoundMessage'', p_region.no_data_found_message);',
'  ',
'    /* if l_col_val_list(l_col_val_list.first).value_list.count = 0 then',
'      apex_json.write(''noData'', true);',
'    else',
'      apex_json.write(''noData'', false);',
'    end if;*/',
'  ',
'    apex_json.close_object;',
'    v_Options := apex_json.get_clob_output;',
'  ',
'    apex_json.free_output;',
'  ',
'    /*  apex_application.show_error_message(p_message => ''asd'',',
'    p_footer  =>apex_json.get_clob_output );*/',
'  ',
'    l_js_code := ''apex.jQuery("#'' || p_region.static_id ||',
'                 ''").circlifulGauge('' || v_Options || '');'';',
'  ',
'    apex_javascript.add_onload_code(p_code => l_js_code);',
'  ',
'    return l_render_result;',
'  ',
'  end f_render;',
'',
'  function f_ajax(p_region in apex_plugin.t_region,',
'                  p_plugin in apex_plugin.t_plugin)',
'    return apex_plugin.t_region_ajax_result is',
'    l_ajax_result apex_plugin.t_region_ajax_result;',
'  ',
'    atr_col_span APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_01,',
'                                                                              '','');',
'  ',
'    atr_title_color   APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_03,',
'                                                                                   '','');',
'    atr_title_style   APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_04,',
'                                                                                   ''^'');',
'    atr_title_XY      APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_05,',
'                                                                                   '','');',
'    atr_title_curr_XY APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  ',
'    atr_animation_step APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_06,',
'                                                                                    '','');',
'  ',
'    atr_perc_txt_size APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_07,',
'                                                                                   '','');',
'  ',
'    atr_perc_XY_pos APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_08,',
'                                                                                 '','');',
'  ',
'    atr_perc_curr_XY_pos APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  ',
'    atr_half_circle APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_09,',
'                                                                                 '','');',
'  ',
'    atr_perc_font_color APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_10,',
'                                                                                     '','');',
'    atr_perc_decimals   APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_11,',
'                                                                                     '','');',
'    atr_targ_font_color APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_12,',
'                                                                                     '','');',
'  ',
'    atr_targ_font_size APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_13,',
'                                                                                    '','');',
'  ',
'    atr_icon APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_14,',
'                                                                          '','');',
'  ',
'    atr_icon_size APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_15,',
'                                                                               '','');',
'  ',
'    atr_icon_color APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_16,',
'                                                                                '','');',
'  ',
'    atr_icon_position APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_17,',
'                                                                                   '','');',
'  ',
'    atr_circ_perc_size         APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_18,',
'                                                                                            '','');',
'    atr_circ_perc_color        APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_19,',
'                                                                                            '','');',
'    atr_circ_perc_outer_color  APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_20,',
'                                                                                            '','');',
'    atr_circ_main_color        APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_21,',
'                                                                                            '','');',
'    atr_circ_main_border_width APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_22,',
'                                                                                            '','');',
'    atr_perc_circum_seg_color  APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_23,',
'                                                                                            '','');',
'    atr_perc_circum_seg_width  APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_24,',
'                                                                                            '','');',
'    atr_Options                APEX_APPLICATION_GLOBAL.VC_ARR2 := APEX_UTIL.STRING_TO_TABLE(p_region.attribute_25,',
'                                                                                            '':'');',
'  ',
'    --Options for the plugin',
'    ---------------------------------------',
'    -- v_Options clob;     ',
'  ',
'    l_arr_lst APEX_APPLICATION_GLOBAL.VC_ARR2;',
'    l_val     varchar2(32767);',
'  ',
'    l_tk  APEX_APPLICATION_GLOBAL.VC_ARR2;',
'    l_opt APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  ',
'    TYPE ass_tab IS TABLE OF VARCHAR2(100);',
'    aar_opts   ass_tab;',
'    aar_sels   ass_tab := ass_tab();',
'    aar_unsels ass_tab := ass_tab();',
'    l_idx      Integer;',
'  ',
'    -- code variables',
'    -------------------',
'    l_html    varchar2(32767);',
'    l_js_code varchar2(32767);',
'  ',
'    l_crlf char(2) := chr(13) || chr(10);',
'  ',
'    --LIST QUERY',
'    l_title   varchar2(32767);',
'    l_percent Number(14);',
'    l_target  Number(14);',
'    l_icon    varchar2(32767);',
'    l_dispVal varchar2(32767);',
'  ',
'    l_query              clob;',
'    l_lst_type           varchar2(50);',
'    l_col_data_type_list apex_application_global.vc_arr2;',
'    l_col_val_list       apex_plugin_util.t_column_value_list2;',
'  ',
'  begin',
'  ',
'    apex_plugin_util.print_json_http_header;',
'    apex_json.initialize_output(p_http_cache => false);',
'    -- begin output as json',
'    /* owa_util.mime_header(''application/json'', false);',
'    htp.p(''cache-control: no-cache'');',
'    htp.p(''pragma: no-cache'');',
'    owa_util.http_header_close; */',
'  ',
'    apex_json.open_object; --{',
'    apex_json.open_array(''chart'');',
'  ',
'    -- Read the data based on the region source query',
'    -- In the query',
'    -- the first column is the title(null or ''...'' and string',
'    -- the 2nd column is the percentage value(0 or greater) and number',
'    -- the 3rd column is the Target percentage value(0 or greater) and number',
'    -- the 4th column is the font awesome icon(null or icon name) and string  ',
'  ',
'    l_col_data_type_list(g_title_col) := apex_plugin_util.c_data_type_varchar2;',
'    l_col_data_type_list(g_percent_col) := apex_plugin_util.c_data_type_number;',
'    l_col_data_type_list(g_target_col) := apex_plugin_util.c_data_type_number;',
'    l_col_data_type_list(g_icon_col) := apex_plugin_util.c_data_type_varchar2;',
'    l_col_data_type_list(g_dispVal_col) := apex_plugin_util.c_data_type_varchar2;',
'  ',
'    --',
'  ',
'    l_col_val_list := apex_plugin_util.get_data2(p_sql_statement  => p_region.source,',
'                                                 p_min_columns    => 2,',
'                                                 p_max_columns    => 5,',
'                                                 p_data_type_list => l_col_data_type_list,',
'                                                 p_component_name => p_region.name);',
'  ',
'    /*apex_application.show_error_message(p_message => ''this'',',
'    p_footer  => l_col_val_list(l_col_val_list.first).value_list.count',
'    );*/',
'    For i in 1 .. l_col_val_list(l_col_val_list.first).value_list.count loop',
'      l_title   := null;',
'      l_percent := 0;',
'      l_icon    := ''none'';',
'      l_target  := 0;',
'      l_dispVal := null;',
'    ',
'      apex_plugin_util.set_component_values(p_column_value_list => l_col_val_list,',
'                                            p_row_num           => i);',
'    ',
'      ---Template--',
'      --=======================',
'      apex_json.open_object;',
'      apex_json.write(''colSpan'',',
'                      case when atr_col_span.exists(i) AND',
'                      atr_col_span(i) is NOT NULL AND',
'                      TO_NUMBER(atr_col_span(i)) between 1 and 12 then',
'                      atr_col_span(i) else 3 end);',
'    ',
'      --==Query Columns and Main Values==---  ',
'      ---------------------------------',
'      l_title := sys.htf.escape_sc(l_col_val_list(g_title_col).value_list(i)',
'                                   .varchar2_value);',
'    ',
'      l_percent := sys.htf.escape_sc(l_col_val_list(g_percent_col).value_list(i)',
'                                     .number_value);',
'    ',
'      if l_col_val_list.exists(g_target_col) then',
'        l_target := sys.htf.escape_sc(l_col_val_list(g_target_col).value_list(i)',
'                                      .number_value);',
'      end if;',
'    ',
'      if l_col_val_list.exists(g_icon_col) and l_col_val_list(g_icon_col).value_list(i)',
'        .varchar2_value is not null then',
'        l_icon := sys.htf.escape_sc(l_col_val_list(g_icon_col).value_list(i)',
'                                    .varchar2_value);',
'      elsif atr_icon.exists(i) and atr_icon(i) is not null then',
'        l_icon := sys.htf.escape_sc(atr_icon(i));',
'      end if;',
'    ',
'      if l_col_val_list.exists(g_dispVal_col) then',
'        l_dispVal := sys.htf.escape_sc(l_col_val_list(g_dispVal_col).value_list(i)',
'                                       .varchar2_value);',
'      end if;',
'    ',
'      ---==Icons====-----',
'      -----------------------------------',
'      if l_icon != ''none'' then',
'      ',
'        apex_json.write(''iconColor'',',
'                        case when atr_icon_color.exists(i) then',
'                        atr_icon_color(i) end);',
'      ',
'        apex_json.write(''iconSize'',',
'                        case when',
'                        atr_icon_size.exists(i) AND',
'                        wwv_flow_utilities.is_numeric(atr_icon_size(i)) then',
'                        atr_icon_size(i) end);',
'      ',
'        apex_json.write(''iconPosition'',',
'                        case when atr_icon_position.exists(i) then',
'                        atr_icon_position(i) end);',
'      ',
'      end if;',
'    ',
'      apex_json.write(''text'', l_title);',
'      apex_json.write(''percent'', l_percent);',
'      apex_json.write(''targetPercent'', l_target);',
'      apex_json.write(''iconFA'', l_icon);',
'      apex_json.write(''replacePercentageByText'', l_dispVal);',
'    ',
'      --End "Query Columns and Main Values"',
'      -------------------------------------------------------',
'    ',
'      apex_json.write(''textStyle'',',
'                      case when atr_title_style.exists(i) then',
'                      atr_title_style(i) end);',
'    ',
'      atr_title_curr_XY(1) := null;',
'      atr_title_curr_XY(2) := null;',
'    ',
'      if atr_title_XY.exists(i) AND atr_title_XY(i) is Not null AND',
'         InStr('':'' || p_region.attribute_25 || '':'', '':1:'') <= 0 then',
'      ',
'        atr_title_curr_XY := APEX_UTIL.STRING_TO_TABLE(atr_title_XY(i), '';'');',
'      ',
'        apex_json.write(''textY'',',
'                        case when atr_title_curr_XY.exists(1) then',
'                        atr_title_curr_XY(1) end);',
'      ',
'        apex_json.write(''textX'',',
'                        case when atr_title_curr_XY.exists(2) then',
'                        atr_title_curr_XY(2) end);',
'      ',
'      end if;',
'    ',
'      apex_json.write(''textColor'',',
'                      case when atr_title_color.exists(i) then',
'                      atr_title_color(i) end);',
'    ',
'      apex_json.write(''percentageTextSize'',',
'                      case when atr_perc_txt_size.exists(i) then',
'                      atr_perc_txt_size(i) end);',
'    ',
'      if atr_perc_XY_pos.exists(i) AND atr_perc_XY_pos(i) is Not null then',
'        atr_perc_curr_XY_pos(1) := null;',
'        atr_perc_curr_XY_pos(2) := null;',
'        atr_perc_curr_XY_pos := APEX_UTIL.STRING_TO_TABLE(atr_perc_XY_pos(i),',
'                                                          '';'');',
'      ',
'        apex_json.write(''percentageY'',',
'                        case when atr_perc_curr_XY_pos.exists(1) then',
'                        atr_perc_curr_XY_pos(1) end);',
'        apex_json.write(''percentageX'',',
'                        case when atr_perc_curr_XY_pos.exists(2) then',
'                        atr_perc_curr_XY_pos(2) end);',
'      ',
'      end if;',
'    ',
'      apex_json.write(''fontColor'',',
'                      case when atr_perc_font_color.exists(i) then',
'                      atr_perc_font_color(i) end);',
'    ',
'      apex_json.write(''decimals'',',
'                      case when atr_perc_decimals.exists(i) then',
'                      atr_perc_decimals(i) end);',
'      apex_json.write(''targetTextSize'',',
'                      case when',
'                      atr_targ_font_size.exists(i) AND',
'                      wwv_flow_utilities.is_numeric(atr_targ_font_size(i)) then',
'                      atr_targ_font_size(i) end);',
'    ',
'      apex_json.write(''targetColor'',',
'                      case when atr_targ_font_color.exists(i) then',
'                      atr_targ_font_color(i) end);',
'    ',
'      ---===Circles====',
'      ---------------------------------',
'      apex_json.write(''pointSize'',',
'                      case when',
'                      atr_circ_perc_size.exists(i) AND',
'                      wwv_flow_utilities.is_numeric(atr_circ_perc_size(i)) then',
'                      To_number(atr_circ_perc_size(i)) end);',
'    ',
'      apex_json.write(''pointColor'',',
'                      case when atr_circ_perc_color.exists(i) then',
'                      atr_circ_perc_color(i) end);',
'    ',
'      apex_json.write(''fillColor'',',
'                      case when atr_circ_perc_outer_color.exists(i) then',
'                      atr_circ_perc_outer_color(i)',
'                      ',
'                      end);',
'    ',
'      apex_json.write(''backgroundColor'',',
'                      case when atr_circ_main_color.exists(i) then',
'                      atr_circ_main_color(i)',
'                      ',
'                      end);',
'    ',
'      apex_json.write(''backgroundBorderWidth'',',
'                      case when atr_circ_main_border_width.exists(i) then',
'                      atr_circ_main_border_width(i) end);',
'    ',
'      apex_json.write(''foregroundColor'',',
'                      case when atr_perc_circum_seg_color.exists(i) then',
'                      atr_perc_circum_seg_color(i) end);',
'    ',
'      apex_json.write(''foregroundBorderWidth'',',
'                      case when atr_perc_circum_seg_width.exists(i) then',
'                      atr_perc_circum_seg_width(i) end);',
'    ',
'      apex_json.write(''animationStep'',',
'                      case when',
'                      atr_animation_step.exists(i) AND',
'                      wwv_flow_utilities.is_numeric(atr_animation_step(i)) then',
'                      ',
'                      to_number(atr_animation_step(i)) end);',
'    ',
'      apex_json.write(''halfCircle'',',
'                      case when atr_half_circle.exists(i) then',
'                      f_yn_2_truefalse(atr_half_circle(i)) end);',
'    ',
'      /*',
'      Options in the plugin have display values for options e,g toggleSelected'',''autoClose'',''keyboardNav'' ',
'      with return values as 1,2,3,4....',
'      Here the aar_opts is populated with the actula JS option for the corresponding Plugin Display Option value',
'      so their index 1,2,3 ¿.. are synced      ',
'      */',
'      aar_opts := ass_tab(''textBelow'',',
'                          ''animation'',',
'                          ''animateInView'',',
'                          ''alwaysDecimals'',',
'                          ''showPercent'',',
'                          ''noPercentageSign'',',
'                          ''multiPercentage'');',
'      --populate the selected options in the aar_sels varray, since atr_Options(i)[plugin opt attr] will return',
'      --the return values of the selected as ,2,5,8....  ',
'      --So the aar_opts(2) = autoClose ,  aar_opts(5) = clearButton ',
'    ',
'      FOR i IN 1 .. atr_Options.count LOOP',
'        aar_sels.extend;',
'      ',
'        aar_sels(i) := aar_opts(to_NUMBER(atr_Options(i)));',
'      END LOOP;',
'      aar_unsels := aar_opts MULTISET except aar_sels;',
'    ',
'      l_idx := aar_sels.first;',
'      while (l_idx is not null) loop',
'        IF aar_sels(l_idx) = ''animation'' OR aar_sels(l_idx) = ''showPercent'' OR',
'           aar_sels(l_idx) = ''multiPercentage'' then',
'          apex_json.write(aar_sels(l_idx), 1);',
'        ELSE',
'          apex_json.write(aar_sels(l_idx), true);',
'        ENd If;',
'        l_idx := aar_sels.next(l_idx);',
'      end loop;',
'      l_idx := aar_unsels.first;',
'      while (l_idx is not null) loop',
'        IF aar_unsels(l_idx) in',
'           (''animation'', ''showPercent'', ''multiPercentage'') then',
'          apex_json.write(aar_unsels(l_idx), 0);',
'        ELSE',
'          apex_json.write(aar_unsels(l_idx), false);',
'        ENd If;',
'      ',
'        l_idx := aar_unsels.next(l_idx);',
'      end loop;',
'    ',
'      apex_json.close_object;',
'    End loop;',
'  ',
'    apex_json.close_array;',
'  ',
'    apex_json.write(''pageItems'',',
'                    apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit));',
'  ',
'    apex_json.close_object;',
'  ',
'    apex_plugin_util.clear_component_values;',
'  ',
'    return null;',
'    /*exception',
'    when others then',
'      htp.p(''error: '' || apex_escape.html(sqlerrm));',
'      return null;*/',
'  end f_ajax;'))
,p_render_function=>'f_render'
,p_ajax_function=>'f_ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE:COLUMNS'
,p_sql_min_column_count=>1
,p_sql_max_column_count=>5
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/planetapex/apex-plugin-circlifulGauge'
,p_files_version=>5
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30702321554359763)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Column Span(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30713326874303238)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>2
,p_prompt=>'Chart Template'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'1'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30713935614306743)
,p_plugin_attribute_id=>wwv_flow_api.id(30713326874303238)
,p_display_sequence=>10
,p_display_value=>'No Template'
,p_return_value=>'1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30714344006310096)
,p_plugin_attribute_id=>wwv_flow_api.id(30713326874303238)
,p_display_sequence=>20
,p_display_value=>'Card Template'
,p_return_value=>'2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30714732162311408)
,p_plugin_attribute_id=>wwv_flow_api.id(30713326874303238)
,p_display_sequence=>30
,p_display_value=>'Standard Template with Title'
,p_return_value=>'3'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30619808117813345)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Title Color(s)'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'commar-separared lis of valid colours values.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30624827872431339)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Title CSS Style'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30658234463511008)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Title From Top(Y);Left(X) (s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_unit=>'CSV(Colon-SV)'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30676667657969266)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Animation Step(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_unit=>'CSV'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30636037119773323)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Percent Text Size'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_unit=>'comma-separated integer'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30638056534813277)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Percentage Value From Top(Y);Left(X) (s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30677242819973258)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Half Circle'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_unit=>'CSV'
,p_is_translatable=>false
,p_text_case=>'UPPER'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30642925070020638)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Percent Font Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30644642566081228)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Percentage Decimals Precision'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30651149490247177)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Target Value Font Color(s)'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30651723752249959)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_prompt=>'Target Value Font Size(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30652326071258160)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_prompt=>'Icon(s)'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30653591917355932)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Icon Size(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30654191198357294)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_prompt=>'Icon Color(s)'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30654780570358101)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_prompt=>'Icon Position(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_text_case=>'LOWER'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30655313411371086)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_prompt=>'Inner Circle Size(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30655980401372612)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_prompt=>'Inner Circle Color(s)'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30663753550682103)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_prompt=>'Middle Circle Color(s)'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30664319356688045)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_prompt=>'Outer Circle Color(s)'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30664984851691604)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>220
,p_prompt=>'Outer Circle Border Width(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30665536823694940)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>23
,p_display_sequence=>230
,p_prompt=>'Percent Circumferential Segment Color(s)'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30666156363696651)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>240
,p_prompt=>'Percent Circumferential Segment Width(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
);
end;
/
begin
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30685742541292957)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>250
,p_prompt=>'Options:'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>true
,p_default_value=>'2:5'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30686328962294570)
,p_plugin_attribute_id=>wwv_flow_api.id(30685742541292957)
,p_display_sequence=>10
,p_display_value=>'Text Below'
,p_return_value=>'1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30686809104295925)
,p_plugin_attribute_id=>wwv_flow_api.id(30685742541292957)
,p_display_sequence=>20
,p_display_value=>'Animation'
,p_return_value=>'2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30687114814297336)
,p_plugin_attribute_id=>wwv_flow_api.id(30685742541292957)
,p_display_sequence=>30
,p_display_value=>'Animation InView'
,p_return_value=>'3'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30687545523299097)
,p_plugin_attribute_id=>wwv_flow_api.id(30685742541292957)
,p_display_sequence=>40
,p_display_value=>'Animation with decimals'
,p_return_value=>'4'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30687953647300391)
,p_plugin_attribute_id=>wwv_flow_api.id(30685742541292957)
,p_display_sequence=>50
,p_display_value=>'Show Percent'
,p_return_value=>'5'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30688321132301797)
,p_plugin_attribute_id=>wwv_flow_api.id(30685742541292957)
,p_display_sequence=>60
,p_display_value=>'No Percent Sign'
,p_return_value=>'6'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(30688756117303342)
,p_plugin_attribute_id=>wwv_flow_api.id(30685742541292957)
,p_display_sequence=>70
,p_display_value=>'Multi Percentage'
,p_return_value=>'7'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E636972636C6966756C202E696E6E65722C2E636972636C6966756C202E6F757465727B66696C6C3A7472616E73706172656E743B7472616E736974696F6E3A7374726F6B652D646173686F66667365742031733B2D7765626B69742D616E696D617469';
wwv_flow_api.g_varchar2_table(2) := '6F6E2D706C61792D73746174653A72756E6E696E673B2D6D6F7A2D7472616E73666F726D3A726F74617465282D383964656729207472616E736C61746558282D3139307078297D2E636972636C6966756C202E6F757465727B7374726F6B653A23333333';
wwv_flow_api.g_varchar2_table(3) := '3B7374726F6B652D77696474683A31392E383B7374726F6B652D6461736861727261793A3533347D2E636972636C6966756C202E696E6E65727B7374726F6B653A6F72616E67653B7374726F6B652D77696474683A32303B7374726F6B652D6461736861';
wwv_flow_api.g_varchar2_table(4) := '727261793A3533343B7374726F6B652D646173686F66667365743A307D2E636972636C6966756C7B6F766572666C6F773A76697369626C6521696D706F7274616E747D2E7376672D636F6E7461696E65727B77696474683A313030253B6D617267696E3A';
wwv_flow_api.g_varchar2_table(5) := '30206175746F3B6F766572666C6F773A76697369626C657D737667202E69636F6E7B666F6E742D66616D696C793A466F6E74417765736F6D657D2E612D436972636C6947617567652D6E6F44617461466F756E642D636F6E7461696E65727B706F736974';
wwv_flow_api.g_varchar2_table(6) := '696F6E3A72656C61746976653B626F726465723A31707820736F6C696420234643303B626F782D73697A696E673A626F726465722D626F783B6261636B67726F756E643A234646433B636F6C6F723A233338344633343B666F6E742D7765696768743A37';
wwv_flow_api.g_varchar2_table(7) := '30303B6D617267696E3A327078206175746F20313470783B70616464696E673A3135707821696D706F7274616E743B746578742D616C69676E3A63656E7465723B766572746963616C2D616C69676E3A6D6964646C653B6F766572666C6F773A68696464';
wwv_flow_api.g_varchar2_table(8) := '656E3B746578742D6F766572666C6F773A656C6C69707369737D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(30786835868268772)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_file_name=>'css/jquery.circliful.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2166756E6374696F6E28652C662C612C6F297B612E776964676574282275692E636972636C6966756C4761756765222C7B6F7074696F6E733A7B63686172743A5B7B636F6C5370616E3A337D5D2C616A61784964656E7469666965723A6E756C6C2C7061';
wwv_flow_api.g_varchar2_table(2) := '67654974656D733A22222C74656D706C6174654E6F3A312C6E6F44617461466F756E644D6573736167653A22222C6E6F446174613A21317D2C674E6F44617461243A6E756C6C2C67526567696F6E243A6E756C6C2C67526567696F6E426F6479243A6E75';
wwv_flow_api.g_varchar2_table(3) := '6C6C2C5F6372656174653A66756E6374696F6E28297B76617220653D746869733B612E75692E636972636C6966756C47617567652E70726F746F747970652E67657449636F6E556E69636F64653D66756E6374696F6E2865297B76617220663D7B676C61';
wwv_flow_api.g_varchar2_table(4) := '73733A2266303030222C6D757369633A2266303031222C7365617263683A2266303032222C22656E76656C6F70652D6F223A2266303033222C68656172743A2266303034222C737461723A2266303035222C22737461722D6F223A2266303036222C7573';
wwv_flow_api.g_varchar2_table(5) := '65723A2266303037222C66696C6D3A2266303038222C2274682D6C61726765223A2266303039222C74683A2266303061222C2274682D6C697374223A2266303062222C636865636B3A2266303063222C72656D6F76653A2266303064222C636C6F73653A';
wwv_flow_api.g_varchar2_table(6) := '2266303064222C74696D65733A2266303064222C227365617263682D706C7573223A2266303065222C227365617263682D6D696E7573223A2266303130222C22706F7765722D6F6666223A2266303131222C7369676E616C3A2266303132222C67656172';
wwv_flow_api.g_varchar2_table(7) := '3A2266303133222C636F673A2266303133222C2274726173682D6F223A2266303134222C686F6D653A2266303135222C2266696C652D6F223A2266303136222C22636C6F636B2D6F223A2266303137222C726F61643A2266303138222C646F776E6C6F61';
wwv_flow_api.g_varchar2_table(8) := '643A2266303139222C226172726F772D636972636C652D6F2D646F776E223A2266303161222C226172726F772D636972636C652D6F2D7570223A2266303162222C696E626F783A2266303163222C22706C61792D636972636C652D6F223A226630316422';
wwv_flow_api.g_varchar2_table(9) := '2C22726F746174652D7269676874223A2266303165222C7265706561743A2266303165222C726566726573683A2266303231222C226C6973742D616C74223A2266303232222C6C6F636B3A2266303233222C666C61673A2266303234222C686561647068';
wwv_flow_api.g_varchar2_table(10) := '6F6E65733A2266303235222C22766F6C756D652D6F6666223A2266303236222C22766F6C756D652D646F776E223A2266303237222C22766F6C756D652D7570223A2266303238222C7172636F64653A2266303239222C626172636F64653A226630326122';
wwv_flow_api.g_varchar2_table(11) := '2C7461673A2266303262222C746167733A2266303263222C626F6F6B3A2266303264222C626F6F6B6D61726B3A2266303265222C7072696E743A2266303266222C63616D6572613A2266303330222C666F6E743A2266303331222C626F6C643A22663033';
wwv_flow_api.g_varchar2_table(12) := '32222C6974616C69633A2266303333222C22746578742D686569676874223A2266303334222C22746578742D7769647468223A2266303335222C22616C69676E2D6C656674223A2266303336222C22616C69676E2D63656E746572223A2266303337222C';
wwv_flow_api.g_varchar2_table(13) := '22616C69676E2D7269676874223A2266303338222C22616C69676E2D6A757374696679223A2266303339222C6C6973743A2266303361222C646564656E743A2266303362222C6F757464656E743A2266303362222C696E64656E743A2266303363222C22';
wwv_flow_api.g_varchar2_table(14) := '766964656F2D63616D657261223A2266303364222C70686F746F3A2266303365222C696D6167653A2266303365222C22706963747572652D6F223A2266303365222C70656E63696C3A2266303430222C226D61702D6D61726B6572223A2266303431222C';
wwv_flow_api.g_varchar2_table(15) := '61646A7573743A2266303432222C74696E743A2266303433222C656469743A2266303365222C2270656E63696C2D7371756172652D6F223A2266303434222C2273686172652D7371756172652D6F223A2266303435222C22636865636B2D737175617265';
wwv_flow_api.g_varchar2_table(16) := '2D6F223A2266303436222C6172726F77733A2266303437222C22737465702D6261636B77617264223A2266303438222C22666173742D6261636B77617264223A2266303439222C6261636B776172643A2266303461222C706C61793A2266303462222C70';
wwv_flow_api.g_varchar2_table(17) := '617573653A2266303463222C73746F703A2266303464222C666F72776172643A2266303465222C22666173742D666F7277617264223A2266303530222C22737465702D666F7277617264223A2266303531222C656A6563743A2266303532222C22636865';
wwv_flow_api.g_varchar2_table(18) := '76726F6E2D6C656674223A2266303533222C2263686576726F6E2D7269676874223A2266303534222C22706C75732D636972636C65223A2266303535222C226D696E75732D636972636C65223A2266303536222C2274696D65732D636972636C65223A22';
wwv_flow_api.g_varchar2_table(19) := '66303537222C22636865636B2D636972636C65223A2266303538222C227175657374696F6E2D636972636C65223A2266303539222C22696E666F2D636972636C65223A2266303561222C63726F737368616972733A2266303562222C2274696D65732D63';
wwv_flow_api.g_varchar2_table(20) := '6972636C652D6F223A2266303563222C22636865636B2D636972636C652D6F223A2266303564222C62616E3A2266303565222C226172726F772D6C656674223A2266303630222C226172726F772D7269676874223A2266303631222C226172726F772D75';
wwv_flow_api.g_varchar2_table(21) := '70223A2266303632222C226172726F772D646F776E223A2266303633222C226D61696C2D666F7277617264223A2266303634222C73686172653A2266303634222C657870616E643A2266303635222C636F6D70726573733A2266303636222C706C75733A';
wwv_flow_api.g_varchar2_table(22) := '2266303637222C6D696E75733A2266303638222C617374657269736B3A2266303639222C226578636C616D6174696F6E2D636972636C65223A2266303661222C676966743A2266303662222C6C6561663A2266303663222C666972653A2266303664222C';
wwv_flow_api.g_varchar2_table(23) := '6579653A2266303665222C226579652D736C617368223A2266303730222C7761726E696E673A2266303731222C226578636C616D6174696F6E2D747269616E676C65223A2266303731222C706C616E653A2266303732222C63616C656E6461723A226630';
wwv_flow_api.g_varchar2_table(24) := '3733222C72616E646F6D3A2266303734222C636F6D6D656E743A2266303735222C6D61676E65743A2266303736222C2263686576726F6E2D7570223A2266303737222C2263686576726F6E2D646F776E223A2266303738222C726574776565743A226630';
wwv_flow_api.g_varchar2_table(25) := '3739222C2273686F7070696E672D63617274223A2266303761222C666F6C6465723A2266303762222C22666F6C6465722D6F70656E223A2266303763222C226172726F77732D76223A2266303764222C226172726F77732D68223A2266303765222C2262';
wwv_flow_api.g_varchar2_table(26) := '61722D63686172742D6F223A2266303830222C226261722D6368617274223A2266303830222C22747769747465722D737175617265223A2266303831222C2266616365626F6F6B2D737175617265223A2266303832222C2263616D6572612D726574726F';
wwv_flow_api.g_varchar2_table(27) := '223A2266303833222C6B65793A2266303834222C67656172733A2266303835222C636F67733A2266303835222C636F6D6D656E74733A2266303836222C227468756D62732D6F2D7570223A2266303837222C227468756D62732D6F2D646F776E223A2266';
wwv_flow_api.g_varchar2_table(28) := '303838222C22737461722D68616C66223A2266303839222C2268656172742D6F223A2266303861222C227369676E2D6F7574223A2266303862222C226C696E6B6564696E2D737175617265223A2266303863222C227468756D622D7461636B223A226630';
wwv_flow_api.g_varchar2_table(29) := '3864222C2265787465726E616C2D6C696E6B223A2266303865222C227369676E2D696E223A2266303930222C74726F7068793A2266303931222C226769746875622D737175617265223A2266303932222C75706C6F61643A2266303933222C226C656D6F';
wwv_flow_api.g_varchar2_table(30) := '6E2D6F223A2266303934222C70686F6E653A2266303935222C227371756172652D6F223A2266303936222C22626F6F6B6D61726B2D6F223A2266303937222C2270686F6E652D737175617265223A2266303938222C747769747465723A2266303939222C';
wwv_flow_api.g_varchar2_table(31) := '66616365626F6F6B3A2266303961222C6769746875623A2266303962222C756E6C6F636B3A2266303963222C226372656469742D63617264223A2266303964222C7273733A2266303965222C226864642D6F223A2266306130222C62756C6C686F726E3A';
wwv_flow_api.g_varchar2_table(32) := '2266306131222C62656C6C3A2266306633222C63657274696669636174653A2266306133222C2268616E642D6F2D7269676874223A2266306134222C2268616E642D6F2D6C656674223A2266306135222C2268616E642D6F2D7570223A2266306136222C';
wwv_flow_api.g_varchar2_table(33) := '2268616E642D6F2D646F776E223A2266306137222C226172726F772D636972636C652D6C656674223A2266306138222C226172726F772D636972636C652D7269676874223A2266306139222C226172726F772D636972636C652D7570223A226630616122';
wwv_flow_api.g_varchar2_table(34) := '2C226172726F772D636972636C652D646F776E223A2266306162222C676C6F62653A2266306163222C7772656E63683A2266306164222C7461736B733A2266306165222C66696C7465723A2266306230222C6272696566636173653A2266306231222C22';
wwv_flow_api.g_varchar2_table(35) := '6172726F77732D616C74223A2266306232222C67726F75703A2266306330222C75736572733A2266306330222C636861696E3A2266306331222C6C696E6B3A2266306331222C636C6F75643A2266306332222C666C61736B3A2266306333222C6375743A';
wwv_flow_api.g_varchar2_table(36) := '2266306334222C73636973736F72733A2266306334222C636F70793A2266306335222C2266696C65732D6F223A2266306335222C7061706572636C69703A2266306336222C736176653A2266306337222C22666C6F7070792D6F223A2266306337222C73';
wwv_flow_api.g_varchar2_table(37) := '71756172653A2266306338222C6E617669636F6E3A2266306339222C72656F726465723A2266306339222C626172733A2266306339222C226C6973742D756C223A2266306361222C226C6973742D6F6C223A2266306362222C737472696B657468726F75';
wwv_flow_api.g_varchar2_table(38) := '67683A2266306363222C756E6465726C696E653A2266306364222C7461626C653A2266306365222C6D616769633A2266306430222C747275636B3A2266306431222C70696E7465726573743A2266306432222C2270696E7465726573742D737175617265';
wwv_flow_api.g_varchar2_table(39) := '223A2266306433222C22676F6F676C652D706C75732D737175617265223A2266306434222C22676F6F676C652D706C7573223A2266306435222C6D6F6E65793A2266306436222C2263617265742D646F776E223A2266306437222C2263617265742D7570';
wwv_flow_api.g_varchar2_table(40) := '223A2266306438222C2263617265742D6C656674223A2266306439222C2263617265742D7269676874223A2266306461222C636F6C756D6E733A2266306462222C756E736F727465643A2266306463222C736F72743A2266306463222C22736F72742D64';
wwv_flow_api.g_varchar2_table(41) := '6F776E223A2266306464222C22736F72742D64657363223A2266306464222C22736F72742D7570223A2266306465222C22736F72742D617363223A2266306465222C656E76656C6F70653A2266306530222C6C696E6B6564696E3A2266306531222C2272';
wwv_flow_api.g_varchar2_table(42) := '6F746174652D6C656674223A2266306532222C756E646F3A2266306532222C6C6567616C3A2266306533222C676176656C3A2266306533222C64617368626F6172643A2266306534222C746163686F6D657465723A2266306534222C22636F6D6D656E74';
wwv_flow_api.g_varchar2_table(43) := '2D6F223A2266306535222C22636F6D6D656E74732D6F223A2266306536222C666C6173683A2266306537222C626F6C743A2266306537222C736974656D61703A2266306538222C756D6272656C6C613A2266306539222C70617374653A2266306561222C';
wwv_flow_api.g_varchar2_table(44) := '636C6970626F6172643A2266306561222C226C6967687462756C622D6F223A2266306562222C65786368616E67653A2266306563222C22636C6F75642D646F776E6C6F6164223A2266306564222C22636C6F75642D75706C6F6164223A2266306565222C';
wwv_flow_api.g_varchar2_table(45) := '22757365722D6D64223A2266306630222C73746574686F73636F70653A2266306631222C73756974636173653A2266306632222C2262656C6C2D6F223A2266306132222C636F666665653A2266306634222C6375746C6572793A2266306635222C226669';
wwv_flow_api.g_varchar2_table(46) := '6C652D746578742D6F223A2266306636222C226275696C64696E672D6F223A2266306637222C22686F73706974616C2D6F223A2266306638222C616D62756C616E63653A2266306639222C6D65646B69743A2266306661222C22666967687465722D6A65';
wwv_flow_api.g_varchar2_table(47) := '74223A2266306662222C626565723A2266306663222C22682D737175617265223A2266306664222C22706C75732D737175617265223A2266306665222C22616E676C652D646F75626C652D6C656674223A2266313030222C22616E676C652D646F75626C';
wwv_flow_api.g_varchar2_table(48) := '652D7269676874223A2266313031222C22616E676C652D646F75626C652D7570223A2266313032222C22616E676C652D646F75626C652D646F776E223A2266313033222C22616E676C652D6C656674223A2266313034222C22616E676C652D7269676874';
wwv_flow_api.g_varchar2_table(49) := '223A2266313035222C22616E676C652D7570223A2266313036222C22616E676C652D646F776E223A2266313037222C6465736B746F703A2266313038222C6C6170746F703A2266313039222C7461626C65743A2266313061222C226D6F62696C652D7068';
wwv_flow_api.g_varchar2_table(50) := '6F6E65223A2266313062222C6D6F62696C653A2266313062222C22636972636C652D6F223A2266313063222C2271756F74652D6C656674223A2266313064222C2271756F74652D7269676874223A2266313065222C7370696E6E65723A2266313130222C';
wwv_flow_api.g_varchar2_table(51) := '636972636C653A2266313131222C226D61696C2D7265706C79223A2266313132222C7265706C793A2266313132222C226769746875622D616C74223A2266313133222C22666F6C6465722D6F223A2266313134222C22666F6C6465722D6F70656E2D6F22';
wwv_flow_api.g_varchar2_table(52) := '3A2266313135222C22736D696C652D6F223A2266313138222C2266726F776E2D6F223A2266313139222C226D65682D6F223A2266313161222C67616D657061643A2266313162222C226B6579626F6172642D6F223A2266313163222C22666C61672D6F22';
wwv_flow_api.g_varchar2_table(53) := '3A2266313164222C22666C61672D636865636B65726564223A2266313165222C7465726D696E616C3A2266313230222C636F64653A2266313231222C226D61696C2D7265706C792D616C6C223A2266313232222C227265706C792D616C6C223A22663132';
wwv_flow_api.g_varchar2_table(54) := '32222C22737461722D68616C662D656D707479223A2266313233222C22737461722D68616C662D66756C6C223A2266313233222C22737461722D68616C662D6F223A2266313233222C226C6F636174696F6E2D6172726F77223A2266313234222C63726F';
wwv_flow_api.g_varchar2_table(55) := '703A2266313235222C22636F64652D666F726B223A2266313236222C756E6C696E6B3A2266313237222C22636861696E2D62726F6B656E223A2266313237222C7175657374696F6E3A2266313238222C696E666F3A2266313239222C6578636C616D6174';
wwv_flow_api.g_varchar2_table(56) := '696F6E3A2266313261222C73757065727363726970743A2266313262222C7375627363726970743A2266313263222C6572617365723A2266313264222C2270757A7A6C652D7069656365223A2266313265222C6D6963726F70686F6E653A226631333022';
wwv_flow_api.g_varchar2_table(57) := '2C226D6963726F70686F6E652D736C617368223A2266313331222C736869656C643A2266313332222C2263616C656E6461722D6F223A2266313333222C22666972652D657874696E67756973686572223A2266313334222C726F636B65743A2266313335';
wwv_flow_api.g_varchar2_table(58) := '222C6D617863646E3A2266313336222C2263686576726F6E2D636972636C652D6C656674223A2266313337222C2263686576726F6E2D636972636C652D7269676874223A2266313338222C2263686576726F6E2D636972636C652D7570223A2266313339';
wwv_flow_api.g_varchar2_table(59) := '222C2263686576726F6E2D636972636C652D646F776E223A2266313361222C68746D6C353A2266313362222C637373333A2266313363222C616E63686F723A2266313364222C22756E6C6F636B2D616C74223A2266313365222C62756C6C736579653A22';
wwv_flow_api.g_varchar2_table(60) := '66313430222C22656C6C69707369732D68223A2266313431222C22656C6C69707369732D76223A2266313432222C227273732D737175617265223A2266313433222C22706C61792D636972636C65223A2266313434222C7469636B65743A226631343522';
wwv_flow_api.g_varchar2_table(61) := '2C226D696E75732D737175617265223A2266313436222C226D696E75732D7371756172652D6F223A2266313437222C226C6576656C2D7570223A2266313438222C226C6576656C2D646F776E223A2266313439222C22636865636B2D737175617265223A';
wwv_flow_api.g_varchar2_table(62) := '2266313461222C2270656E63696C2D737175617265223A2266313462222C2265787465726E616C2D6C696E6B2D737175617265223A2266313463222C2273686172652D737175617265223A2266313464222C636F6D706173733A2266313465222C22746F';
wwv_flow_api.g_varchar2_table(63) := '67676C652D646F776E223A2266313530222C2263617265742D7371756172652D6F2D646F776E223A2266313530222C22746F67676C652D7570223A2266313531222C2263617265742D7371756172652D6F2D7570223A2266313531222C22746F67676C65';
wwv_flow_api.g_varchar2_table(64) := '2D7269676874223A2266313532222C2263617265742D7371756172652D6F2D7269676874223A2266313532222C6575726F3A2266313533222C6575723A2266313533222C6762703A2266313534222C646F6C6C61723A2266313535222C7573643A226631';
wwv_flow_api.g_varchar2_table(65) := '3535222C72757065653A2266313536222C696E723A2266313536222C636E793A2266313537222C726D623A2266313537222C79656E3A2266313537222C6A70793A2266313537222C7275626C653A2266313538222C726F75626C653A2266313538222C72';
wwv_flow_api.g_varchar2_table(66) := '75623A2266313538222C776F6E3A2266313539222C6B72773A2266313539222C626974636F696E3A2266313561222C6274633A2266313561222C66696C653A2266313562222C2266696C652D74657874223A2266313563222C22736F72742D616C706861';
wwv_flow_api.g_varchar2_table(67) := '2D617363223A2266313564222C22736F72742D616C7068612D64657363223A2266313565222C22736F72742D616D6F756E742D617363223A2266313630222C22736F72742D616D6F756E742D64657363223A2266313631222C22736F72742D6E756D6572';
wwv_flow_api.g_varchar2_table(68) := '69632D617363223A2266313632222C22736F72742D6E756D657269632D64657363223A2266313633222C227468756D62732D7570223A2266313634222C227468756D62732D646F776E223A2266313635222C22796F75747562652D737175617265223A22';
wwv_flow_api.g_varchar2_table(69) := '66313636222C796F75747562653A2266313637222C78696E673A2266313638222C2278696E672D737175617265223A2266313639222C22796F75747562652D706C6179223A2266313661222C64726F70626F783A2266313662222C22737461636B2D6F76';
wwv_flow_api.g_varchar2_table(70) := '6572666C6F77223A2266313663222C696E7374616772616D3A2266313664222C666C69636B723A2266313665222C61646E3A2266313730222C6269746275636B65743A2266313731222C226269746275636B65742D737175617265223A2266313732222C';
wwv_flow_api.g_varchar2_table(71) := '74756D626C723A2266313733222C2274756D626C722D737175617265223A2266313734222C226C6F6E672D6172726F772D646F776E223A2266313735222C226C6F6E672D6172726F772D7570223A2266313736222C226C6F6E672D6172726F772D6C6566';
wwv_flow_api.g_varchar2_table(72) := '74223A2266313737222C226C6F6E672D6172726F772D7269676874223A2266313738222C6170706C653A2266313739222C77696E646F77733A2266313761222C616E64726F69643A2266313762222C6C696E75783A2266313763222C6472696262626C65';
wwv_flow_api.g_varchar2_table(73) := '3A2266313764222C736B7970653A2266313765222C666F75727371756172653A2266313830222C7472656C6C6F3A2266313831222C66656D616C653A2266313832222C6D616C653A2266313833222C6769747469703A2266313834222C2273756E2D6F22';
wwv_flow_api.g_varchar2_table(74) := '3A2266313835222C226D6F6F6E2D6F223A2266313836222C617263686976653A2266313837222C6275673A2266313838222C766B3A2266313839222C776569626F3A2266313861222C72656E72656E3A2266313862222C706167656C696E65733A226631';
wwv_flow_api.g_varchar2_table(75) := '3863222C22737461636B2D65786368616E6765223A2266313864222C226172726F772D636972636C652D6F2D7269676874223A2266313865222C226172726F772D636972636C652D6F2D6C656674223A2266313930222C22746F67676C652D6C65667422';
wwv_flow_api.g_varchar2_table(76) := '3A2266313931222C2263617265742D7371756172652D6F2D6C656674223A2266313931222C22646F742D636972636C652D6F223A2266313932222C776865656C63686169723A2266313933222C2276696D656F2D737175617265223A2266313934222C22';
wwv_flow_api.g_varchar2_table(77) := '7475726B6973682D6C697261223A2266313935222C22747279223A2266313935222C22706C75732D7371756172652D6F223A2266313936222C2273706163652D73687574746C65223A2266313937222C736C61636B3A2266313938222C22656E76656C6F';
wwv_flow_api.g_varchar2_table(78) := '70652D737175617265223A2266313939222C776F726470726573733A2266313961222C6F70656E69643A2266313962222C696E737469747574696F6E3A2266313963222C62616E6B3A2266313963222C756E69766572736974793A2266313963222C226D';
wwv_flow_api.g_varchar2_table(79) := '6F727461722D626F617264223A2266313964222C2267726164756174696F6E2D636170223A2266313964222C7961686F6F3A2266313965222C676F6F676C653A2266316130222C7265646469743A2266316131222C227265646469742D73717561726522';
wwv_flow_api.g_varchar2_table(80) := '3A2266316132222C227374756D626C6575706F6E2D636972636C65223A2266316133222C7374756D626C6575706F6E3A2266316134222C64656C6963696F75733A2266316135222C646967673A2266316136222C22706965642D7069706572223A226631';
wwv_flow_api.g_varchar2_table(81) := '6137222C22706965642D70697065722D616C74223A2266316138222C64727570616C3A2266316139222C6A6F6F6D6C613A2266316161222C6C616E67756167653A2266316162222C6661783A2266316163222C6275696C64696E673A2266316164222C63';
wwv_flow_api.g_varchar2_table(82) := '68696C643A2266316165222C7061773A2266316230222C73706F6F6E3A2266316231222C637562653A2266316232222C63756265733A2266316233222C626568616E63653A2266316234222C22626568616E63652D737175617265223A2266316235222C';
wwv_flow_api.g_varchar2_table(83) := '737465616D3A2266316236222C22737465616D2D737175617265223A2266316237222C72656379636C653A2266316238222C6175746F6D6F62696C653A2266316239222C6361723A2266316239222C6361623A2266316261222C746178693A2266316261';
wwv_flow_api.g_varchar2_table(84) := '222C747265653A2266316262222C73706F746966793A2266316263222C64657669616E746172743A2266316264222C736F756E64636C6F75643A2266316265222C64617461626173653A2266316330222C2266696C652D7064662D6F223A226631633122';
wwv_flow_api.g_varchar2_table(85) := '2C2266696C652D776F72642D6F223A2266316332222C2266696C652D657863656C2D6F223A2266316333222C2266696C652D706F776572706F696E742D6F223A2266316334222C2266696C652D70686F746F2D6F223A2266316335222C2266696C652D70';
wwv_flow_api.g_varchar2_table(86) := '6963747572652D6F223A2266316335222C2266696C652D696D6167652D6F223A2266316335222C2266696C652D7A69702D6F223A2266316336222C2266696C652D617263686976652D6F223A2266316336222C2266696C652D736F756E642D6F223A2266';
wwv_flow_api.g_varchar2_table(87) := '316337222C2266696C652D617564696F2D6F223A2266316337222C2266696C652D6D6F7669652D6F223A2266316338222C2266696C652D766964656F2D6F223A2266316338222C2266696C652D636F64652D6F223A2266316339222C76696E653A226631';
wwv_flow_api.g_varchar2_table(88) := '6361222C636F646570656E3A2266316362222C6A73666964646C653A2266316363222C226C6966652D626F7579223A2266316364222C226C6966652D62756F79223A2266316364222C226C6966652D7361766572223A2266316364222C737570706F7274';
wwv_flow_api.g_varchar2_table(89) := '3A2266316364222C226C6966652D72696E67223A2266316364222C22636972636C652D6F2D6E6F746368223A2266316365222C72613A2266316430222C726562656C3A2266316430222C67653A2266316431222C656D706972653A2266316431222C2267';
wwv_flow_api.g_varchar2_table(90) := '69742D737175617265223A2266316432222C6769743A2266316433222C226861636B65722D6E657773223A2266316434222C2274656E63656E742D776569626F223A2266316435222C71713A2266316436222C7765636861743A2266316437222C776569';
wwv_flow_api.g_varchar2_table(91) := '78696E3A2266316437222C73656E643A2266316438222C2270617065722D706C616E65223A2266316438222C2273656E642D6F223A2266316439222C2270617065722D706C616E652D6F223A2266316439222C686973746F72793A2266316461222C2263';
wwv_flow_api.g_varchar2_table(92) := '6972636C652D7468696E223A2266316462222C6865616465723A2266316463222C7061726167726170683A2266316464222C736C69646572733A2266316465222C2273686172652D616C74223A2266316530222C2273686172652D616C742D7371756172';
wwv_flow_api.g_varchar2_table(93) := '65223A2266316531222C626F6D623A2266316532222C22736F636365722D62616C6C2D6F223A2266316533222C22667574626F6C2D6F223A2266316533222C7474793A2266316534222C62696E6F63756C6172733A2266316535222C706C75673A226631';
wwv_flow_api.g_varchar2_table(94) := '6536222C736C69646573686172653A2266316537222C7477697463683A2266316538222C79656C703A2266316539222C226E65777370617065722D6F223A2266316561222C776966693A2266316562222C63616C63756C61746F723A2266316563222C70';
wwv_flow_api.g_varchar2_table(95) := '617970616C3A2266316564222C22676F6F676C652D77616C6C6574223A2266316565222C2263632D76697361223A2266316630222C2263632D6D617374657263617264223A2266316631222C2263632D646973636F766572223A2266316632222C226363';
wwv_flow_api.g_varchar2_table(96) := '2D616D6578223A2266316633222C2263632D70617970616C223A2266316634222C2263632D737472697065223A2266316635222C2262656C6C2D736C617368223A2266316636222C2262656C6C2D736C6173682D6F223A2266316637222C74726173683A';
wwv_flow_api.g_varchar2_table(97) := '2266316638222C636F707972696768743A2266316639222C61743A2266316661222C65796564726F707065723A2266316662222C227061696E742D6272757368223A2266316663222C2262697274686461792D63616B65223A2266316664222C22617265';
wwv_flow_api.g_varchar2_table(98) := '612D6368617274223A2266316665222C227069652D6368617274223A2266323030222C226C696E652D6368617274223A2266323031222C6C617374666D3A2266323032222C226C617374666D2D737175617265223A2266323033222C22746F67676C652D';
wwv_flow_api.g_varchar2_table(99) := '6F6666223A2266323034222C22746F67676C652D6F6E223A2266323035222C62696379636C653A2266323036222C6275733A2266323037222C696F78686F73743A2266323038222C616E67656C6C6973743A2266323039222C63633A2266323061222C73';
wwv_flow_api.g_varchar2_table(100) := '68656B656C3A2266323062222C73686571656C3A2266323062222C696C733A2266323062222C6D65616E706174683A2266323063227D3B72657475726E20665B652E737562737472696E6728332C652E6C656E677468295D7D2C652E67526567696F6E24';
wwv_flow_api.g_varchar2_table(101) := '3D61282223222B652E656C656D656E742E617474722822696422292C617065782E6750616765436F6E7465787424292C746869732E5F6275696C6454656D706C61746528292C652E67526567696F6E242E6F6E28226170657872656672657368222C652E';
wwv_flow_api.g_varchar2_table(102) := '5F726566726573682E62696E64286529292E747269676765722822617065787265667265736822297D2C5F696E69743A66756E6374696F6E28297B7D2C5F6275696C6454656D706C6174653A66756E6374696F6E28297B76617220663D746869733B6966';
wwv_flow_api.g_varchar2_table(103) := '28662E67526567696F6E243D61282223222B662E656C656D656E742E617474722822696422292C617065782E6750616765436F6E7465787424292C662E67526567696F6E426F6479243D662E67526567696F6E242E66696E6428222E742D526567696F6E';
wwv_flow_api.g_varchar2_table(104) := '2D626F647922292C303D3D3D662E67526567696F6E426F6479242E6C656E677468297B766172206F3D652E68746D6C4275696C64657228293B6F2E6D61726B757028273C64697620636C6173733D22742D526567696F6E2D626F647957726170223E3C64';
wwv_flow_api.g_varchar2_table(105) := '697620636C6173733D22742D526567696F6E2D626F647920636972636C69436F6E7461696E6572223E3C2F6469763E3C2F6469763E27292C662E67526567696F6E426F6479243D662E67526567696F6E242E617070656E64286F2E746F537472696E6728';
wwv_flow_api.g_varchar2_table(106) := '29292E66696E6428222E742D526567696F6E2D626F647922297D656C736520662E67526567696F6E426F6479242E616464436C6173732822636972636C69436F6E7461696E657222293B76617220723D652E68746D6C4275696C64657228293B722E6D61';
wwv_flow_api.g_varchar2_table(107) := '726B757028273C64697620636C6173733D22612D436972636C6947617567652D6D65737361676520612D436972636C6947617567652D6E6F44617461466F756E642D636F6E7461696E6572223E27292E6D61726B757028273C64697620636C6173733D22';
wwv_flow_api.g_varchar2_table(108) := '612D436972636C6947617567652D6D65737361676549636F6E2020612D436972636C6947617567652D6E6F44617461466F756E64223E27292E6D61726B757028273C7370616E20636C6173733D22612D49636F6E2069636F6E2D6972722D68656C70223E';
wwv_flow_api.g_varchar2_table(109) := '3C2F7370616E3E3C2F6469763E27292E6D61726B757028273C7370616E20636C6173733D22612D436972636C6947617567652D6D65737361676554657874223E234D5347233C2F7370616E3E3C2F6469763E27292C662E674E6F44617461243D6128722E';
wwv_flow_api.g_varchar2_table(110) := '746F537472696E6728292E7265706C6163652822234D534723222C662E6F7074696F6E732E6E6F44617461466F756E644D65737361676529292E6869646528292C662E67526567696F6E426F6479242E616674657228662E674E6F4461746124297D2C5F';
wwv_flow_api.g_varchar2_table(111) := '647261773A66756E6374696F6E2866297B76617220723D746869733B674F7074696F6E733D722E6F7074696F6E732C612E657874656E6428746869732E6F7074696F6E732C66293B666F722876617220743D302C693D746869732E6F7074696F6E732E63';
wwv_flow_api.g_varchar2_table(112) := '686172742E6C656E6774683B693E743B742B2B297B76617220632C6C3D28652E68746D6C4275696C64657228292C722E656C656D656E742E617474722822696422292B225F636972636C695F222B28742B3129292C6E3D652E68746D6C4275696C646572';
wwv_flow_api.g_varchar2_table(113) := '28293B6E2E6D61726B757028273C64697620636C6173733D22636F6C20636F6C2D23434F4C5F5350414E23223E27292C323D3D722E6F7074696F6E732E74656D706C6174654E6F3F6E2E6D61726B757028273C64697620636C6173733D22742D52656769';
wwv_flow_api.g_varchar2_table(114) := '6F6E20742D526567696F6E2D2D7363726F6C6C426F647920742D526567696F6E2D626F6479577261702220726F6C653D2267726F75702220617269612D6C6162656C6C656462793D22272B722E656C656D656E742E617474722822696422292B275F6368';
wwv_flow_api.g_varchar2_table(115) := '6172745F68656164696E67223E3C64697620636C6173733D22742D526567696F6E2D626F6479223E27293A333D3D722E6F7074696F6E732E74656D706C6174654E6F26266E2E6D61726B757028273C64697620636C6173733D22742D526567696F6E2074';
wwv_flow_api.g_varchar2_table(116) := '2D526567696F6E2D2D7363726F6C6C426F64792220726F6C653D2267726F75702220617269612D6C6162656C6C656462793D22272B722E656C656D656E742E617474722822696422292B275F63686172745F68656164696E67223E27292E6D61726B7570';
wwv_flow_api.g_varchar2_table(117) := '28273C64697620636C6173733D22742D526567696F6E2D686561646572223E3C64697620636C6173733D22742D526567696F6E2D6865616465724974656D7320742D526567696F6E2D6865616465724974656D732D2D7469746C65223E3C683220636C61';
wwv_flow_api.g_varchar2_table(118) := '73733D22742D526567696F6E2D7469746C65222069643D22272B722E656C656D656E742E617474722822696422292B275F63686172745F68656164696E67223E235245475F5449544C45233C2F68323E3C2F6469763E27292E6D61726B757028273C2F64';
wwv_flow_api.g_varchar2_table(119) := '69763E3C64697620636C6173733D22742D526567696F6E2D626F647957726170223E3C64697620636C6173733D22742D526567696F6E2D626F6479223E27292C6E2E6D61726B757028273C7370616E206964203D2022272B6C2B27223E3C2F7370616E3E';
wwv_flow_api.g_varchar2_table(120) := '27292C313D3D722E6F7074696F6E732E74656D706C6174654E6F3F6E2E6D61726B757028223C2F6469763E22293A323D3D722E6F7074696F6E732E74656D706C6174654E6F3F6E2E6D61726B757028223C2F6469763E3C2F6469763E22293A6E2E6D6172';
wwv_flow_api.g_varchar2_table(121) := '6B757028223C2F6469763E3C2F6469763E3C2F6469763E3C2F6469763E22292C633D6E2E746F537472696E6728292E7265706C616365282223434F4C5F5350414E23222C722E6F7074696F6E732E63686172745B745D2E636F6C5370616E292C633D333D';
wwv_flow_api.g_varchar2_table(122) := '3D722E6F7074696F6E732E74656D706C6174654E6F3F632E7265706C6163652822235245475F5449544C4523222C722E6F7074696F6E732E63686172745B745D2E74657874293A632E7265706C6163652822235245475F5449544C4523222C2222292C33';
wwv_flow_api.g_varchar2_table(123) := '3D3D722E6F7074696F6E732E74656D706C6174654E6F262628722E6F7074696F6E732E63686172745B745D2E746578743D6E756C6C2C722E6F7074696F6E732E63686172745B745D2E7465787442656C6F773D2131292C722E67526567696F6E426F6479';
wwv_flow_api.g_varchar2_table(124) := '242E617070656E642863292C22223D3D3D746869732E6F7074696F6E732E63686172745B745D2E69636F6E464126266E756C6C3D3D3D746869732E6F7074696F6E732E63686172745B745D2E69636F6E46417C7C746869732E6F7074696F6E732E636861';
wwv_flow_api.g_varchar2_table(125) := '72745B745D2E69636F6E46413D3D6F7C7C28746869732E6F7074696F6E732E63686172745B745D2E69636F6E3D722E67657449636F6E556E69636F646528746869732E6F7074696F6E732E63686172745B745D2E69636F6E464129292C61282223222B6C';
wwv_flow_api.g_varchar2_table(126) := '292E636972636C6966756C28746869732E6F7074696F6E732E63686172745B745D297D7D2C5F64656275673A66756E6374696F6E2865297B617065782E64656275672E6C6F672865297D2C5F636C6561723A66756E6374696F6E28297B7D2C5F72656672';
wwv_flow_api.g_varchar2_table(127) := '6573683A66756E6374696F6E28297B76617220652C663D746869733B617065782E7365727665722E706C7567696E28662E6F7074696F6E732E616A61784964656E7469666965722C7B706167654974656D733A662E6F7074696F6E732E70616765497465';
wwv_flow_api.g_varchar2_table(128) := '6D737D2C7B64617461547970653A226A736F6E222C6163636570743A226170706C69636174696F6E2F6A736F6E222C6265666F726553656E643A66756E6374696F6E28297B653D617065782E7574696C2E73686F775370696E6E657228662E6752656769';
wwv_flow_api.g_varchar2_table(129) := '6F6E24297D2C737563636573733A66756E6374696F6E2865297B652E63686172742E6C656E6774683E3D313F28662E674E6F44617461242E6869646528292C662E67526567696F6E426F6479242E73686F7728292C662E67526567696F6E426F6479242E';
wwv_flow_api.g_varchar2_table(130) := '68746D6C282222292C662E5F64726177286529293A28662E67526567696F6E426F6479242E6869646528292C662E674E6F44617461242E73686F772829297D2C636F6D706C6574653A66756E6374696F6E28297B652E72656D6F766528297D2C6572726F';
wwv_flow_api.g_varchar2_table(131) := '723A662E5F64656275672C636C6561723A662E5F636C6561727D297D2C5F6372656174655461673A66756E6374696F6E2865297B72657475726E206128646F63756D656E742E637265617465456C656D656E74286529297D7D297D28617065782E757469';
wwv_flow_api.g_varchar2_table(132) := '6C2C617065782E7365727665722C617065782E6A5175657279293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(30787307715268776)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_file_name=>'js/circlifulGauge.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2275736520737472696374223B2166756E6374696F6E2861297B612E666E2E636972636C6966756C3D66756E6374696F6E28622C63297B76617220643D612E657874656E64287B666F726567726F756E64436F6C6F723A2223333439384442222C626163';
wwv_flow_api.g_varchar2_table(2) := '6B67726F756E64436F6C6F723A2223636363222C706F696E74436F6C6F723A226E6F6E65222C66696C6C436F6C6F723A226E6F6E65222C666F726567726F756E64426F7264657257696474683A31352C6261636B67726F756E64426F7264657257696474';
wwv_flow_api.g_varchar2_table(3) := '683A31352C706F696E7453697A653A32382E352C666F6E74436F6C6F723A2223616161222C70657263656E743A37352C616E696D6174696F6E3A312C616E696D6174696F6E537465703A352C69636F6E3A226E6F6E65222C69636F6E53697A653A223330';
wwv_flow_api.g_varchar2_table(4) := '222C69636F6E436F6C6F723A2223636363222C69636F6E506F736974696F6E3A22746F70222C7461726765743A302C73746172743A302C73686F7750657263656E743A312C70657263656E746167655465787453697A653A32322C70657263656E746167';
wwv_flow_api.g_varchar2_table(5) := '65583A3130302C70657263656E74616765593A3130302C746578744164646974696F6E616C4373733A22222C74617267657450657263656E743A302C7461726765745465787453697A653A31372C746172676574436F6C6F723A2223323938304239222C';
wwv_flow_api.g_varchar2_table(6) := '746578743A6E756C6C2C746578745374796C653A6E756C6C2C74657874436F6C6F723A2223363636222C74657874593A6E756C6C2C74657874583A6E756C6C2C6D756C746950657263656E746167653A302C70657263656E74616765733A6E756C6C2C74';
wwv_flow_api.g_varchar2_table(7) := '65787442656C6F773A21312C6E6F50657263656E746167655369676E3A21312C7265706C61636550657263656E746167654279546578743A6E756C6C2C68616C66436972636C653A21312C616E696D617465496E566965773A21312C646563696D616C73';
wwv_flow_api.g_varchar2_table(8) := '3A302C616C77617973446563696D616C733A21312C7469746C653A22436972636C65204368617274222C6465736372697074696F6E3A22227D2C62293B72657475726E20746869732E656163682866756E6374696F6E28297B66756E6374696F6E207928';
wwv_flow_api.g_varchar2_table(9) := '297B76617220613D77696E646F772E736574496E74657276616C2866756E6374696F6E28297B723E3D783F2877696E646F772E636C656172496E74657276616C2861292C743D312C2266756E6374696F6E223D3D747970656F6620632626632E63616C6C';
wwv_flow_api.g_varchar2_table(10) := '287468697329293A28722B3D732C752B3D76292C722F332E363E3D652626313D3D74262628723D332E362A65292C753E642E7461726765742626313D3D74262628753D642E746172676574292C6E756C6C3D3D642E7265706C61636550657263656E7461';
wwv_flow_api.g_varchar2_table(11) := '6765427954657874262628773D642E68616C66436972636C653F7061727365466C6F6174283130302A722F3336302A32293A7061727365466C6F6174283130302A722F333630292C773D772E746F466978656428642E646563696D616C73292C21642E61';
wwv_flow_api.g_varchar2_table(12) := '6C77617973446563696D616C73262628303D3D657C7C653E31262631213D7429262628773D7061727365496E7428772929292C6F2E6174747228227374726F6B652D646173686172726179222C722B222C20323030303022292C313D3D642E73686F7750';
wwv_flow_api.g_varchar2_table(13) := '657263656E743F702E66696E6428222E6E756D62657222292E746578742877293A28702E66696E6428222E6E756D62657222292E746578742875292C702E66696E6428222E70657263656E7422292E7465787428222229297D2E62696E64286F292C7129';
wwv_flow_api.g_varchar2_table(14) := '7D66756E6374696F6E207A28297B76617220623D6E6176696761746F722E757365724167656E742E746F4C6F7765724361736528292E696E6465784F6628227765626B69742229213D2D313F22626F6479223A2268746D6C222C633D612862292E736372';
wwv_flow_api.g_varchar2_table(15) := '6F6C6C546F7028292C643D632B612877696E646F77292E68656967687428292C653D4D6174682E726F756E64286F2E6F666673657428292E746F70292C663D652B6F2E68656967687428293B72657475726E20653C642626663E637D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(16) := '204128297B6F2E686173436C6173732822737461727422297C7C7A286F292626286F2E616464436C6173732822737461727422292C73657454696D656F757428792C32353029297D66756E6374696F6E204228622C63297B612E6561636828622C66756E';
wwv_flow_api.g_varchar2_table(17) := '6374696F6E28612C64297B612E746F4C6F776572436173652829696E2063262628625B615D3D635B612E746F4C6F7765724361736528295D297D297D76617220623D612874686973293B4228642C622E646174612829293B766172206A2C6B2C6C2C653D';
wwv_flow_api.g_varchar2_table(18) := '642E70657263656E742C663D38332C673D3130302C683D642E70657263656E74616765592C693D642E70657263656E74616765582C6D3D642E6261636B67726F756E64426F7264657257696474683B696628642E68616C66436972636C653F226C656674';
wwv_flow_api.g_varchar2_table(19) := '223D3D642E69636F6E506F736974696F6E3F28673D38302C663D3130302C693D3131372C683D313030293A642E68616C66436972636C65262628663D38302C683D313030293A22626F74746F6D223D3D642E69636F6E506F736974696F6E3F28663D3132';
wwv_flow_api.g_varchar2_table(20) := '342C683D3935293A226C656674223D3D642E69636F6E506F736974696F6E3F28673D38302C663D3131302C693D313137293A226D6964646C65223D3D642E69636F6E506F736974696F6E3F313D3D642E6D756C746950657263656E746167653F226F626A';
wwv_flow_api.g_varchar2_table(21) := '656374223D3D747970656F6620642E70657263656E74616765733F6D3D33303A28663D3131302C6B3D273C67207374726F6B653D22272B28226E6F6E6522213D642E6261636B67726F756E64436F6C6F723F642E6261636B67726F756E64436F6C6F723A';
wwv_flow_api.g_varchar2_table(22) := '222363636322292B2722203E3C6C696E652078313D22313333222079313D223530222078323D22313430222079323D22343022207374726F6B652D77696474683D22322220202F3E3C2F673E272C6B2B3D273C67207374726F6B653D22272B28226E6F6E';
wwv_flow_api.g_varchar2_table(23) := '6522213D642E6261636B67726F756E64436F6C6F723F642E6261636B67726F756E64436F6C6F723A222363636322292B2722203E3C6C696E652078313D22313430222079313D223430222078323D22323030222079323D22343022207374726F6B652D77';
wwv_flow_api.g_varchar2_table(24) := '696474683D22322220202F3E3C2F673E272C693D3232382C683D3437293A28663D3131302C6B3D273C67207374726F6B653D22272B28226E6F6E6522213D642E6261636B67726F756E64436F6C6F723F642E6261636B67726F756E64436F6C6F723A2223';
wwv_flow_api.g_varchar2_table(25) := '63636322292B2722203E3C6C696E652078313D22313333222079313D223530222078323D22313430222079323D22343022207374726F6B652D77696474683D22322220202F3E3C2F673E272C6B2B3D273C67207374726F6B653D22272B28226E6F6E6522';
wwv_flow_api.g_varchar2_table(26) := '213D642E6261636B67726F756E64436F6C6F723F642E6261636B67726F756E64436F6C6F723A222363636322292B2722203E3C6C696E652078313D22313430222079313D223430222078323D22323030222079323D22343022207374726F6B652D776964';
wwv_flow_api.g_varchar2_table(27) := '74683D22322220202F3E3C2F673E272C693D3137302C683D3335293A227269676874223D3D642E69636F6E506F736974696F6E262628673D3132302C663D3131302C693D3830292C642E74617267657450657263656E743E30262628683D39352C6B3D27';
wwv_flow_api.g_varchar2_table(28) := '3C67207374726F6B653D22272B28226E6F6E6522213D642E6261636B67726F756E64436F6C6F723F642E6261636B67726F756E64436F6C6F723A222363636322292B2722203E3C6C696E652078313D223735222079313D22313031222078323D22313235';
wwv_flow_api.g_varchar2_table(29) := '222079323D2231303122207374726F6B652D77696474683D22312220202F3E3C2F673E272C6B2B3D273C7465787420746578742D616E63686F723D226D6964646C652220783D22272B692B272220793D2231323022207374796C653D22666F6E742D7369';
wwv_flow_api.g_varchar2_table(30) := '7A653A20272B642E7461726765745465787453697A652B2770783B222066696C6C3D22272B642E746172676574436F6C6F722B27223E272B642E74617267657450657263656E742B28642E6E6F50657263656E746167655369676E26266E756C6C3D3D64';
wwv_flow_api.g_varchar2_table(31) := '2E7265706C61636550657263656E746167654279546578743F22223A222522292B223C2F746578743E222C6B2B3D273C636972636C652063783D22313030222063793D223130302220723D223639222066696C6C3D226E6F6E6522207374726F6B653D22';
wwv_flow_api.g_varchar2_table(32) := '272B642E6261636B67726F756E64436F6C6F722B2722207374726F6B652D77696474683D223322207374726F6B652D6461736861727261793D2234353022207472616E73666F726D3D22726F74617465282D39302C3130302C3130302922202F3E272C6B';
wwv_flow_api.g_varchar2_table(33) := '2B3D273C636972636C652063783D22313030222063793D223130302220723D223639222066696C6C3D226E6F6E6522207374726F6B653D22272B642E746172676574436F6C6F722B2722207374726F6B652D77696474683D223322207374726F6B652D64';
wwv_flow_api.g_varchar2_table(34) := '61736861727261793D22272B332E362A642E74617267657450657263656E742B272C20323030303022207472616E73666F726D3D22726F74617465282D39302C3130302C3130302922202F3E27292C6E756C6C213D642E74657874262628642E68616C66';
wwv_flow_api.g_varchar2_table(35) := '436972636C653F642E7465787442656C6F773F6B2B3D273C7465787420746578742D616E63686F723D226D6964646C652220783D22272B286E756C6C213D642E74657874583F642E74657874583A2231303022292B272220793D22272B286E756C6C213D';
wwv_flow_api.g_varchar2_table(36) := '642E74657874593F642E74657874593A2231323022292B2722207374796C653D22272B642E746578745374796C652B27222066696C6C3D22272B642E74657874436F6C6F722B27223E272B642E746578742B223C2F746578743E223A303D3D642E6D756C';
wwv_flow_api.g_varchar2_table(37) := '746950657263656E746167653F6B2B3D273C7465787420746578742D616E63686F723D226D6964646C652220783D22272B286E756C6C213D642E74657874583F642E74657874583A2231303022292B272220793D22272B286E756C6C213D642E74657874';
wwv_flow_api.g_varchar2_table(38) := '593F642E74657874593A2231313522292B2722207374796C653D22272B642E746578745374796C652B27222066696C6C3D22272B642E74657874436F6C6F722B27223E272B642E746578742B223C2F746578743E223A313D3D642E6D756C746950657263';
wwv_flow_api.g_varchar2_table(39) := '656E746167652626286B2B3D273C7465787420746578742D616E63686F723D226D6964646C652220783D22272B286E756C6C213D642E74657874583F642E74657874583A2232323822292B272220793D22272B286E756C6C213D642E74657874593F642E';
wwv_flow_api.g_varchar2_table(40) := '74657874593A22363522292B2722207374796C653D22272B642E746578745374796C652B27222066696C6C3D22272B642E74657874436F6C6F722B27223E272B642E746578742B223C2F746578743E22293A642E7465787442656C6F773F6B2B3D273C74';
wwv_flow_api.g_varchar2_table(41) := '65787420746578742D616E63686F723D226D6964646C652220783D22272B286E756C6C213D642E74657874583F642E74657874583A2231303022292B272220793D22272B286E756C6C213D642E74657874593F642E74657874593A2231393022292B2722';
wwv_flow_api.g_varchar2_table(42) := '207374796C653D22272B642E746578745374796C652B27222066696C6C3D22272B642E74657874436F6C6F722B27223E272B642E746578742B223C2F746578743E223A303D3D642E6D756C746950657263656E746167653F6B2B3D273C74657874207465';
wwv_flow_api.g_varchar2_table(43) := '78742D616E63686F723D226D6964646C652220783D22272B286E756C6C213D642E74657874583F642E74657874583A2231303022292B272220793D22272B286E756C6C213D642E74657874593F642E74657874593A2231313522292B2722207374796C65';
wwv_flow_api.g_varchar2_table(44) := '3D22272B642E746578745374796C652B27222066696C6C3D22272B642E74657874436F6C6F722B27223E272B642E746578742B223C2F746578743E223A313D3D642E6D756C746950657263656E746167652626286B2B3D273C7465787420746578742D61';
wwv_flow_api.g_varchar2_table(45) := '6E63686F723D226D6964646C652220783D22272B286E756C6C213D642E74657874583F642E74657874583A2232323822292B272220793D22272B286E756C6C213D642E74657874593F642E74657874593A22363522292B2722207374796C653D22272B64';
wwv_flow_api.g_varchar2_table(46) := '2E746578745374796C652B27222066696C6C3D22272B642E74657874436F6C6F722B27223E272B642E746578742B223C2F746578743E2229292C226E6F6E6522213D642E69636F6E2626286C3D273C7465787420746578742D616E63686F723D226D6964';
wwv_flow_api.g_varchar2_table(47) := '646C652220783D22272B672B272220793D22272B662B272220636C6173733D2269636F6E22207374796C653D22666F6E742D73697A653A20272B642E69636F6E53697A652B277078222066696C6C3D22272B642E69636F6E436F6C6F722B27223E262378';
wwv_flow_api.g_varchar2_table(48) := '272B642E69636F6E2B223C2F746578743E22292C642E68616C66436972636C65297B766172206E3D277472616E73666F726D3D22726F74617465282D3138302C3130302C3130302922273B622E616464436C61737328227376672D636F6E7461696E6572';
wwv_flow_api.g_varchar2_table(49) := '22292E617070656E64286128273C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076657273696F6E3D22312E31222076696577426F783D2230203020313934203138362220636C6173733D2263697263';
wwv_flow_api.g_varchar2_table(50) := '6C6966756C223E272B6B2B273C636C6970506174682069643D226375742D6F66662D626F74746F6D223E203C7265637420783D223130302220793D2230222077696474683D2231303022206865696768743D2232303022202F3E203C2F636C6970506174';
wwv_flow_api.g_varchar2_table(51) := '683E3C636972636C652063783D22313030222063793D223130302220723D2235372220636C6173733D22626F72646572222066696C6C3D22272B642E66696C6C436F6C6F722B2722207374726F6B653D22272B642E6261636B67726F756E64436F6C6F72';
wwv_flow_api.g_varchar2_table(52) := '2B2722207374726F6B652D77696474683D22272B6D2B2722207374726F6B652D6461736861727261793D223336302220636C69702D706174683D2275726C28236375742D6F66662D626F74746F6D2922207472616E73666F726D3D22726F74617465282D';
wwv_flow_api.g_varchar2_table(53) := '39302C3130302C3130302922202F3E3C636972636C6520636C6173733D22636972636C65222063783D22313030222063793D223130302220723D2235372220636C6173733D22626F72646572222066696C6C3D226E6F6E6522207374726F6B653D22272B';
wwv_flow_api.g_varchar2_table(54) := '642E666F726567726F756E64436F6C6F722B2722207374726F6B652D77696474683D22272B642E666F726567726F756E64426F7264657257696474682B2722207374726F6B652D6461736861727261793D22302C32303030302220272B6E2B27202F3E3C';
wwv_flow_api.g_varchar2_table(55) := '636972636C652063783D22313030222063793D223130302220723D22272B642E706F696E7453697A652B27222066696C6C3D22272B642E706F696E74436F6C6F722B272220636C69702D706174683D2275726C28236375742D6F66662D626F74746F6D29';
wwv_flow_api.g_varchar2_table(56) := '22207472616E73666F726D3D22726F74617465282D39302C3130302C3130302922202F3E272B6C2B273C7465787420636C6173733D2274696D65722220746578742D616E63686F723D226D6964646C652220783D22272B692B272220793D22272B682B27';
wwv_flow_api.g_varchar2_table(57) := '22207374796C653D22666F6E742D73697A653A20272B642E70657263656E746167655465787453697A652B2270783B20222B6A2B223B222B642E746578744164646974696F6E616C4373732B27222066696C6C3D22272B642E666F6E74436F6C6F722B27';
wwv_flow_api.g_varchar2_table(58) := '223E3C747370616E20636C6173733D226E756D626572223E272B286E756C6C3D3D642E7265706C61636550657263656E746167654279546578743F303A642E7265706C61636550657263656E74616765427954657874292B273C2F747370616E3E3C7473';
wwv_flow_api.g_varchar2_table(59) := '70616E20636C6173733D2270657263656E74223E272B28642E6E6F50657263656E746167655369676E7C7C6E756C6C213D642E7265706C61636550657263656E746167654279546578743F22223A222522292B223C2F747370616E3E3C2F746578743E22';
wwv_flow_api.g_varchar2_table(60) := '29297D656C736520622E616464436C61737328227376672D636F6E7461696E657222292E617070656E64286128273C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076657273696F6E3D22312E312220';
wwv_flow_api.g_varchar2_table(61) := '76696577426F783D2230203020313934203138362220636C6173733D22636972636C6966756C223E272B6B2B273C636972636C652063783D22313030222063793D223130302220723D2235372220636C6173733D22626F72646572222066696C6C3D2227';
wwv_flow_api.g_varchar2_table(62) := '2B642E66696C6C436F6C6F722B2722207374726F6B653D22272B642E6261636B67726F756E64436F6C6F722B2722207374726F6B652D77696474683D22272B6D2B2722207374726F6B652D6461736861727261793D2233363022207472616E73666F726D';
wwv_flow_api.g_varchar2_table(63) := '3D22726F74617465282D39302C3130302C3130302922202F3E3C636972636C6520636C6173733D22636972636C65222063783D22313030222063793D223130302220723D2235372220636C6173733D22626F72646572222066696C6C3D226E6F6E652220';
wwv_flow_api.g_varchar2_table(64) := '7374726F6B653D22272B642E666F726567726F756E64436F6C6F722B2722207374726F6B652D77696474683D22272B642E666F726567726F756E64426F7264657257696474682B2722207374726F6B652D6461736861727261793D22302C323030303022';
wwv_flow_api.g_varchar2_table(65) := '207472616E73666F726D3D22726F74617465282D39302C3130302C3130302922202F3E3C636972636C652063783D22313030222063793D223130302220723D22272B642E706F696E7453697A652B27222066696C6C3D22272B642E706F696E74436F6C6F';
wwv_flow_api.g_varchar2_table(66) := '722B2722202F3E272B6C2B273C7465787420636C6173733D2274696D65722220746578742D616E63686F723D226D6964646C652220783D22272B692B272220793D22272B682B2722207374796C653D22666F6E742D73697A653A20272B642E7065726365';
wwv_flow_api.g_varchar2_table(67) := '6E746167655465787453697A652B2270783B20222B6A2B223B222B642E746578744164646974696F6E616C4373732B27222066696C6C3D22272B642E666F6E74436F6C6F722B27223E3C747370616E20636C6173733D226E756D626572223E272B286E75';
wwv_flow_api.g_varchar2_table(68) := '6C6C3D3D642E7265706C61636550657263656E746167654279546578743F303A642E7265706C61636550657263656E74616765427954657874292B273C2F747370616E3E3C747370616E20636C6173733D2270657263656E74223E272B28642E6E6F5065';
wwv_flow_api.g_varchar2_table(69) := '7263656E746167655369676E7C7C6E756C6C213D642E7265706C61636550657263656E746167654279546578743F22223A222522292B223C2F747370616E3E3C2F746578743E2229293B766172206F3D622E66696E6428222E636972636C6522292C703D';
wwv_flow_api.g_varchar2_table(70) := '622E66696E6428222E74696D657222292C713D33302C723D302C733D642E616E696D6174696F6E537465702C743D302C753D302C763D302C773D652C783D332E362A653B642E68616C66436972636C65262628783D332E362A652F32292C6E756C6C213D';
wwv_flow_api.g_varchar2_table(71) := '642E7265706C61636550657263656E74616765427954657874262628773D642E7265706C61636550657263656E74616765427954657874292C642E73746172743E302626642E7461726765743E30262628653D642E73746172742F28642E746172676574';
wwv_flow_api.g_varchar2_table(72) := '2F313030292C763D642E7461726765742F313030292C313D3D642E616E696D6174696F6E3F642E616E696D617465496E566965773F612877696E646F77292E7363726F6C6C2866756E6374696F6E28297B4128297D293A7928293A286F2E617474722822';
wwv_flow_api.g_varchar2_table(73) := '7374726F6B652D646173686172726179222C782B222C20323030303022292C313D3D642E73686F7750657263656E743F702E66696E6428222E6E756D62657222292E746578742877293A28702E66696E6428222E6E756D62657222292E7465787428642E';
wwv_flow_api.g_varchar2_table(74) := '746172676574292C702E66696E6428222E70657263656E7422292E746578742822222929297D297D7D286A5175657279293B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(30787649083268799)
,p_plugin_id=>wwv_flow_api.id(30582562946901875)
,p_file_name=>'js/jquery.circliful.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_badge_list
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(2139316138579445699)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.BADGE_LIST'
,p_display_name=>'Badge List'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.BADGE_LIST'),'#IMAGE_PREFIX#plugins/com.oracle.apex.badgelist/')
,p_javascript_file_urls=>'#PLUGIN_FILES#com_oracle_apex_badgelist.js'
,p_css_file_urls=>'#PLUGIN_FILES#com_oracle_apex_badgelist.css'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result is',
'begin',
'    apex_javascript.add_onload_code (',
'        p_code => ''com_oracle_apex_badgelist(''||',
'            apex_javascript.add_value(p_region.static_id)||',
'            ''{''||',
'                -- why is this attribute needed if is not used?',
'                apex_javascript.add_attribute(',
'                    ''pageItems'', ',
'                    apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)',
'                )||',
'                apex_javascript.add_attribute(',
'                    ''ajaxIdentifier'', ',
'                    apex_plugin.get_ajax_identifier, ',
'                    false, ',
'                    false',
'                )||',
'            ''}''||',
'        '');''',
'    );',
'--    CSS for Big Value List',
'--    apex_css.add_file (',
'--        p_name      => ''com_oracle_apex_badge_list'',',
'--        p_directory => p_plugin.file_prefix );',
'    -- Start the list',
'',
'',
'    -- It''s time to emit the selected rows',
'',
'',
'    return null;',
'',
'end render;',
'',
'function ajax (',
'    p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin',
') return apex_plugin.t_region_ajax_result ',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_label_column      constant varchar2(255) := p_region.attribute_01;',
'    c_value_column      constant varchar2(255) := p_region.attribute_02;',
'    c_percent_column    constant varchar2(255) := p_region.attribute_03;',
'    c_link_target       constant varchar2(255) := p_region.attribute_04;',
'    ',
'    c_layout            constant varchar2(1)   := p_region.attribute_05;',
'    c_chart_size        constant varchar2(3)   := p_region.attribute_06;',
'    c_chart_type        constant varchar2(3)   := p_region.attribute_07;',
'    c_colored           constant varchar2(1)   := p_region.attribute_08;',
'',
'    l_label_column_no   pls_integer;',
'    l_value_column_no   pls_integer;',
'    l_percent_column_no pls_integer;',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'    ',
'    l_label             varchar2(4000);',
'    l_value             varchar2(4000);',
'    l_percent           number;',
'    l_url               varchar2(4000);',
'    l_class             varchar2(255);',
'',
'begin',
'    apex_json.initialize_output (',
'        p_http_cache => false );',
'        -- Read the data based on the region source query',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => p_region.source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_label_column_no   := apex_plugin_util.get_column_no (',
'                               p_attribute_label   => ''Label Column'',',
'                               p_column_alias      => c_label_column,',
'                               p_column_value_list => l_column_value_list,',
'                               p_is_required       => true,',
'                               p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'                                      ',
'    l_value_column_no   := apex_plugin_util.get_column_no (',
'                               p_attribute_label   => ''Value Column'',',
'                               p_column_alias      => c_value_column,',
'                               p_column_value_list => l_column_value_list,',
'                               p_is_required       => true,',
'                               p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'                                      ',
'    l_percent_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Percent Column'',',
'                             p_column_alias      => c_percent_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => false,',
'                             p_data_type         => apex_plugin_util.c_data_type_number );',
'    ',
'    -- begin output as json',
'    owa_util.mime_header(''application/json'', false);',
'    htp.p(''cache-control: no-cache'');',
'    htp.p(''pragma: no-cache'');',
'    owa_util.http_header_close;',
' --   l_message_when_no_data_found := apex_escape.html_whitelist(',
'  --      apex_plugin_util.replace_substitutions (',
'   --             p_value  => c_message_when_no_data_found,',
'   --             p_escape => false',
'    --        )',
'    --    );',
'    apex_json.open_object();',
'    apex_json.write(''layout'', c_layout); ',
'    apex_json.write(''chart_size'', c_chart_size); ',
'    apex_json.write(''chart_type'', c_chart_type); ',
'    apex_json.write(''colored'', c_colored); ',
'    apex_json.open_array(''data'');',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_json.open_object(); ',
'            -- Set the column values of our current row so that apex_plugin_util.replace_substitutions',
'            -- can do substitutions for columns contained in the region source query.',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num           => l_row_num );',
'',
'            -- get the label',
'            l_label := ',
'                           apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_label_column_no).data_type,',
'                               p_value     => l_column_value_list(l_label_column_no).value_list(l_row_num) );',
'                         --  p_region.escape_output );apex_plugin_util.escape (',
'',
'            apex_json.    write(''label'', l_label); ',
'            ',
'            -- get the value',
'            l_value := apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_value_column_no).data_type,',
'                               p_value     => l_column_value_list(l_value_column_no).value_list(l_row_num) );',
'',
'            apex_json.    write(''value'', l_value); ',
'',
'            -- get percent',
'            if l_percent_column_no is not null then',
'                l_percent := l_column_value_list(l_percent_column_no).value_list(l_row_num).number_value;',
'                apex_json.    write(''percent'', l_percent); ',
'            end if;',
'',
'            -- get the link target if it does exist',
'            if c_link_target is not null then',
'                l_url := apex_util.prepare_url (',
'                             apex_plugin_util.replace_substitutions (',
'                                 p_value  => c_link_target,',
'                                 p_escape => false ));',
'                apex_json.    write(''url'', l_url);                ',
'            end if;',
'            ',
'            apex_json.close_object();        ',
'',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    apex_json.close_all();',
'    ',
'    return null;',
'exception when others then',
'    htp.p(''error: ''||apex_escape.html(sqlerrm));',
'    return null;',
'end ajax;',
'',
''))
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:ESCAPE_OUTPUT'
,p_sql_min_column_count=>2
,p_sql_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>',
'select ''Open''               as label,',
'       to_char(320,''9G990'') as value,',
'       13                   as percent',
'  from dual',
' union all',
'select ''Closed''             as label,',
'       to_char(87,''9G990'')  as value,',
'       70                   as percent',
'  from dual',
'</pre>'))
,p_substitute_attributes=>false
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Badge lists are useful for displaying a region with a small number of counts for important statistics. For example, in Bug Tracker, this plug-in is used to show the total bugs, open bugs, open high priority bugs, and open critical severity bugs.</'
||'p>',
'<p>This plug-in is suitable for adding to the Home page to show important summary information.</p>'))
,p_version_identifier=>'5.0.2'
,p_about_url=>'http://apex.oracle.com/plugins'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35651864570646140)
,p_plugin_id=>wwv_flow_api.id(2139316138579445699)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Label Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the badges.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35652340843646140)
,p_plugin_id=>wwv_flow_api.id(2139316138579445699)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Value Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the values for the badges.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35652737002646140)
,p_plugin_id=>wwv_flow_api.id(2139316138579445699)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Percent Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the percentage values for the badges. Percentages will be displayed together with the value within the badge.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35653095752646141)
,p_plugin_id=>wwv_flow_api.id(2139316138579445699)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a badge entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35653540881646141)
,p_plugin_id=>wwv_flow_api.id(2139316138579445699)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Layout'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_default_value=>'0'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select the layout to determine how the badge list is displayed.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35653893226646141)
,p_plugin_attribute_id=>wwv_flow_api.id(35653540881646141)
,p_display_sequence=>5
,p_display_value=>'Fit to Page'
,p_return_value=>'0'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Sizes the badges to stretch across the page. The width of each badge will be determined by the number of badges and the display width.</p>',
'<p>Note: Badges will not wrap when displayed on smaller devices.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35654410314646141)
,p_plugin_attribute_id=>wwv_flow_api.id(35653540881646141)
,p_display_sequence=>7
,p_display_value=>'Float to Left'
,p_return_value=>'F'
,p_help_text=>'<p>Sizes the badges based on the width of the label for each badge. All badges will be displayed to the left of the region.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35654946829646142)
,p_plugin_attribute_id=>wwv_flow_api.id(35653540881646141)
,p_display_sequence=>10
,p_display_value=>'1 column'
,p_return_value=>'1'
,p_help_text=>'Displays only one badge per row. Therefore, if there are three badges they are displayed on three rows.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35655406371646142)
,p_plugin_attribute_id=>wwv_flow_api.id(35653540881646141)
,p_display_sequence=>20
,p_display_value=>'2 columns'
,p_return_value=>'2'
,p_help_text=>'Displays only two badges per row. Therefore, if there are three badges they are displayed on two rows.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35655890507646142)
,p_plugin_attribute_id=>wwv_flow_api.id(35653540881646141)
,p_display_sequence=>30
,p_display_value=>'3 columns'
,p_return_value=>'3'
,p_help_text=>'<p>Displays a maximum of three badges per row. Therefore, if there are four badges they are displayed on two rows.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35656444725646143)
,p_plugin_attribute_id=>wwv_flow_api.id(35653540881646141)
,p_display_sequence=>40
,p_display_value=>'4 columns'
,p_return_value=>'4'
,p_help_text=>'<p>Displays a maximum of four badges per row. Therefore, if there are six badges they are displayed on two rows.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35656923247646143)
,p_plugin_attribute_id=>wwv_flow_api.id(35653540881646141)
,p_display_sequence=>50
,p_display_value=>'5 columns'
,p_return_value=>'5'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Displays a maximum of fix badges per row. Therefore, if there are seven badges they are displayed on two rows.</p>',
'<p>Note: on smaller displays where the badges cannot be displayed appropriately, the responsive region will revert to less column and additional rows. For example, seven badges may be displayed as three columns on three rows, instead of five columns '
||'on two rows.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35657401431646143)
,p_plugin_id=>wwv_flow_api.id(2139316138579445699)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>70
,p_prompt=>'Chart Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_default_value=>'L'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(35660325384646145)
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'BOX'
,p_lov_type=>'STATIC'
,p_help_text=>'Select the size of badge to display.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35657768430646144)
,p_plugin_attribute_id=>wwv_flow_api.id(35657401431646143)
,p_display_sequence=>0
,p_display_value=>'Small'
,p_return_value=>'S'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35658339008646144)
,p_plugin_attribute_id=>wwv_flow_api.id(35657401431646143)
,p_display_sequence=>10
,p_display_value=>'Medium'
,p_return_value=>'M'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35658850127646144)
,p_plugin_attribute_id=>wwv_flow_api.id(35657401431646143)
,p_display_sequence=>20
,p_display_value=>'Large'
,p_return_value=>'L'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35659343739646144)
,p_plugin_attribute_id=>wwv_flow_api.id(35657401431646143)
,p_display_sequence=>30
,p_display_value=>'Extra Large'
,p_return_value=>'B'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35659841118646145)
,p_plugin_attribute_id=>wwv_flow_api.id(35657401431646143)
,p_display_sequence=>40
,p_display_value=>'Extra Extra Large'
,p_return_value=>'XXL'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35660325384646145)
,p_plugin_id=>wwv_flow_api.id(2139316138579445699)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>60
,p_prompt=>'Chart Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'BOX'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the shape of the badges to display.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35660683513646145)
,p_plugin_attribute_id=>wwv_flow_api.id(35660325384646145)
,p_display_sequence=>10
,p_display_value=>'Rectangular'
,p_return_value=>'BOX'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35661252246646146)
,p_plugin_attribute_id=>wwv_flow_api.id(35660325384646145)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'DOT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35661682633646146)
,p_plugin_id=>wwv_flow_api.id(2139316138579445699)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Color'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'N'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select if the badges should be displayed in different colors, or without colors.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35662092760646146)
,p_plugin_attribute_id=>wwv_flow_api.id(35661682633646146)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35662616143646146)
,p_plugin_attribute_id=>wwv_flow_api.id(35661682633646146)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'N'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_d3_piechart
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(2149395099163409644)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.D3.PIECHART'
,p_display_name=>'D3 Pie Chart'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.D3.PIECHART'),'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.piechart/')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'-- NOTE: THIS IS THE VALUE FOR PLUGIN FILE PREFIX #IMAGE_PREFIX#plugins/com.oracle.apex.d3.piechart/',
'FUNCTION RENDER (',
'    P_REGION IN APEX_PLUGIN.T_REGION,',
'    P_PLUGIN IN APEX_PLUGIN.T_PLUGIN,',
'    P_IS_PRINTER_FRIENDLY IN BOOLEAN',
') RETURN APEX_PLUGIN.T_REGION_RENDER_RESULT IS',
'    -- Plugin attributes readable names',
'    C_WIDTH CONSTANT NUMBER := TO_NUMBER(APEX_PLUGIN_UTIL.REPLACE_SUBSTITUTIONS(P_REGION.ATTRIBUTE_05));',
'    C_INNER_RADIUS CONSTANT NUMBER := TO_NUMBER(APEX_PLUGIN_UTIL.REPLACE_SUBSTITUTIONS(P_REGION.ATTRIBUTE_06));',
'    C_SHOW_LABELS CONSTANT BOOLEAN := (INSTR('':'' || P_REGION.ATTRIBUTE_07 || '':'', '':LABELS:'')  > 0);',
'    C_SHOW_TOOLTIP CONSTANT BOOLEAN := (INSTR('':'' || P_REGION.ATTRIBUTE_07 || '':'', '':TOOLTIP:'') > 0);',
'    C_SHOW_PERCENTAGES CONSTANT BOOLEAN := (INSTR('':'' || P_REGION.ATTRIBUTE_07 || '':'', '':PERCENTAGES:'')  > 0);',
'    C_COLOR_SCHEME CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_08;',
'    C_VALUE_FORMATTING CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_10;',
'    C_CHART_TYPE CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_11;',
'    C_LEGEND_POSITION VARCHAR2(255) := P_REGION.ATTRIBUTE_12;',
'    ',
'    L_COLORS VARCHAR2(2000);',
'    L_OUTER_RADIUS_VALUE NUMBER;',
'    L_OUTER_RADIUS VARCHAR2(255);',
'    L_INNER_RADIUS VARCHAR2(255);',
'',
'    -- Function constants',
'    C_D3_BASE_DIRECTORY CONSTANT VARCHAR2(255) := APEX_APPLICATION.G_IMAGE_PREFIX || ''libraries/d3/3.5.5/'';',
'    --C_JQUERY_RESIZE_BASE_DIRECTORY CONSTANT VARCHAR2(255) := APEX_APPLICATION.G_IMAGE_PREFIX || ''libraries/jquery-elementresize/0.5/'';',
'    C_PLUGIN_BASE CONSTANT VARCHAR2(255) := APEX_APPLICATION.G_IMAGE_PREFIX || ''plugins/com.oracle.apex.d3.piechart/'';',
'    C_D3_ORACLE_BASE CONSTANT VARCHAR2(255) := APEX_APPLICATION.G_IMAGE_PREFIX || ''plugins/com.oracle.apex.d3/'';',
'    C_D3_ARY_BASE CONSTANT VARCHAR2(255) := APEX_APPLICATION.G_IMAGE_PREFIX || ''plugins/com.oracle.apex.d3.ary/'';',
'    C_D3_TOOLTIP_BASE CONSTANT VARCHAR2(255) := APEX_APPLICATION.G_IMAGE_PREFIX || ''plugins/com.oracle.apex.d3.tooltip/'';',
'BEGIN',
'    -- Placeholder div for chart',
'    SYS.HTP.P(',
'        ''<div><div id="'' || APEX_ESCAPE.HTML_ATTRIBUTE(P_REGION.STATIC_ID || ''_chart'') || ''" class="a-D3PieChart-container"></div></div>'' ',
'    );',
'    ',
'    -- JavaScript libraries',
'    /*APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME => ''jquery.resize'',',
'        P_DIRECTORY => C_JQUERY_RESIZE_BASE_DIRECTORY ',
'    );*/',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME => ''d3.min'',',
'        P_DIRECTORY => C_D3_BASE_DIRECTORY ',
'    );',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME => ''d3.oracle'',',
'        P_DIRECTORY => C_D3_ORACLE_BASE ',
'    );',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME      => ''d3.oracle.tooltip'',',
'        P_DIRECTORY => C_D3_TOOLTIP_BASE ',
'    );',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME      => ''d3.oracle.ary'',',
'        P_DIRECTORY => C_D3_ARY_BASE ',
'    );',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME      => ''d3.oracle.piechart'',',
'        P_DIRECTORY => C_PLUGIN_BASE',
'    );',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME      => ''d3.oracle.piechart.labels'',',
'        P_DIRECTORY => C_PLUGIN_BASE',
'    );',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME => ''com.oracle.apex.d3.piechart'',',
'        P_DIRECTORY => C_PLUGIN_BASE',
'    );',
'    ',
'    -- Styles',
'    APEX_CSS.ADD_FILE (',
'        P_NAME => ''d3.oracle.tooltip'',',
'        P_DIRECTORY => C_D3_TOOLTIP_BASE',
'    );',
'    APEX_CSS.ADD_FILE (',
'        P_NAME => ''d3.oracle.ary'',',
'        P_DIRECTORY => C_D3_ARY_BASE',
'    );',
'    APEX_CSS.ADD_FILE (',
'        P_NAME => ''d3.oracle.piechart'',',
'        P_DIRECTORY => C_PLUGIN_BASE',
'    );',
'',
'    -- Color scheme',
'    -- Defaults to NULL',
'    L_COLORS := CASE C_COLOR_SCHEME',
'        WHEN ''MODERN'' THEN',
'            ''#FF3B30:#FF9500:#FFCC00:#4CD964:#34AADC:#007AFF:#5856D6:#FF2D55:#8E8E93:#C7C7CC''',
'        WHEN ''MODERN2'' THEN',
'            ''#1ABC9C:#2ECC71:#4AA3DF:#9B59B6:#3D566E:#F1C40F:#E67E22:#E74C3C''',
'        WHEN ''SOLAR'' THEN',
'            ''#B58900:#CB4B16:#DC322F:#D33682:#6C71C4:#268BD2:#2AA198:#859900''',
'        WHEN ''METRO'' THEN',
'            ''#E61400:#19A2DE:#319A31:#EF9608:#8CBE29:#A500FF:#00AAAD:#FF0094:#9C5100:#E671B5''',
'        WHEN ''CUSTOM'' THEN',
'            P_REGION.ATTRIBUTE_09',
'    END;',
'    ',
'    L_OUTER_RADIUS_VALUE := C_WIDTH / 2;',
'    IF  L_OUTER_RADIUS_VALUE > 0 AND L_OUTER_RADIUS_VALUE < 1 THEN',
'      L_OUTER_RADIUS := ''0'' || TO_CHAR(L_OUTER_RADIUS_VALUE);',
'    ELSE',
'      L_OUTER_RADIUS := TO_CHAR(L_OUTER_RADIUS_VALUE);',
'    END IF;',
'    ',
'    IF C_CHART_TYPE = ''DONUT'' THEN',
'        L_INNER_RADIUS := TO_CHAR(C_INNER_RADIUS);',
'    ELSE',
'        L_INNER_RADIUS := ''0'';',
'    END IF;',
'',
'    -- Initialize the pie chart when the page has been rendered.',
'    -- apex_javascript.add_attribute are used to make sure that',
'    -- the values are properly escaped.   ',
'    APEX_JAVASCRIPT.ADD_ONLOAD_CODE(',
'        P_CODE => ''com_oracle_apex_d3_pie('' ||',
'            APEX_JAVASCRIPT.ADD_VALUE(P_REGION.STATIC_ID) ||',
'            ''{'' ||',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''chartRegionId'',  P_REGION.STATIC_ID || ''_chart'') ||',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''colors'', L_COLORS) || ',
'                ''"outerRadius":'' || L_OUTER_RADIUS || '','' ||',
'                ''"innerRadius":'' || L_INNER_RADIUS || '','' ||',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''showLabels'', C_SHOW_LABELS) || ',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''legendPosition'', C_LEGEND_POSITION) ||',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''showTooltip'', C_SHOW_TOOLTIP) || ',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''showPercentages'', C_SHOW_PERCENTAGES) || ',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''valueTemplate'', C_VALUE_FORMATTING) || ',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''transitions'', TRUE) || ',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''noDataFoundMessage'', P_REGION.NO_DATA_FOUND_MESSAGE) || ',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''pageItems'', APEX_PLUGIN_UTIL.PAGE_ITEM_NAMES_TO_JQUERY(P_REGION.AJAX_ITEMS_TO_SUBMIT)) ||',
'                APEX_JAVASCRIPT.ADD_ATTRIBUTE(''ajaxIdentifier'', APEX_PLUGIN.GET_AJAX_IDENTIFIER, FALSE, FALSE) ||',
'            ''});'' ',
'    );',
'    ',
'    RETURN NULL;',
'END RENDER;',
'',
'FUNCTION AJAX (',
'     P_REGION IN APEX_PLUGIN.T_REGION,',
'     P_PLUGIN IN APEX_PLUGIN.T_PLUGIN',
') RETURN APEX_PLUGIN.T_REGION_AJAX_RESULT IS',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    C_LABEL_COLUMN CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_01;',
'    C_VALUE_COLUMN CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_02;',
'    C_COLOR_COLUMN CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_03;',
'    ',
'    C_LINK_TARGET CONSTANT VARCHAR2(255) := P_REGION.ATTRIBUTE_04;',
'',
'    L_LABEL_COLUMN_NO PLS_INTEGER;',
'    L_VALUE_COLUMN_NO PLS_INTEGER;',
'    L_COLOR_COLUMN_NO PLS_INTEGER;',
'    ',
'    L_COLUMN_VALUE_LIST APEX_PLUGIN_UTIL.T_COLUMN_VALUE_LIST2;',
'    ',
'    L_LABEL VARCHAR2(4000);',
'    L_VALUE NUMBER;',
'    L_COLOR VARCHAR2(20);',
'    L_LINK VARCHAR2(4000);',
'BEGIN',
'    APEX_PLUGIN_UTIL.PRINT_JSON_HTTP_HEADER;',
'    ',
'    L_COLUMN_VALUE_LIST := APEX_PLUGIN_UTIL.GET_DATA2(',
'        P_SQL_STATEMENT => P_REGION.SOURCE,',
'        P_MIN_COLUMNS => 2,',
'        P_MAX_COLUMNS => NULL,',
'        P_COMPONENT_NAME => P_REGION.NAME',
'    );',
'    ',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    L_LABEL_COLUMN_NO := APEX_PLUGIN_UTIL.GET_COLUMN_NO(',
'        P_ATTRIBUTE_LABEL => ''Label Column'',',
'        P_COLUMN_ALIAS => C_LABEL_COLUMN,',
'        P_COLUMN_VALUE_LIST => L_COLUMN_VALUE_LIST,',
'        P_IS_REQUIRED => TRUE,',
'        P_DATA_TYPE => APEX_PLUGIN_UTIL.C_DATA_TYPE_VARCHAR2 ',
'    );                              ',
'    L_VALUE_COLUMN_NO := APEX_PLUGIN_UTIL.GET_COLUMN_NO(',
'        P_ATTRIBUTE_LABEL=> ''Value Column'',',
'        P_COLUMN_ALIAS => C_VALUE_COLUMN,',
'        P_COLUMN_VALUE_LIST => L_COLUMN_VALUE_LIST,',
'        P_IS_REQUIRED => TRUE,',
'        P_DATA_TYPE => APEX_PLUGIN_UTIL.C_DATA_TYPE_NUMBER',
'    );',
'    L_COLOR_COLUMN_NO := APEX_PLUGIN_UTIL.GET_COLUMN_NO(',
'        P_ATTRIBUTE_LABEL => ''Color Column'',',
'        P_COLUMN_ALIAS => C_COLOR_COLUMN,',
'        P_COLUMN_VALUE_LIST => L_COLUMN_VALUE_LIST,',
'        P_IS_REQUIRED => FALSE,',
'        P_DATA_TYPE => APEX_PLUGIN_UTIL.C_DATA_TYPE_VARCHAR2',
'    );',
'',
'    SYS.HTP.PRN(''['');',
'    -- It''s time to emit the selected rows',
'    FOR L_ROW_NUM IN 1 .. L_COLUMN_VALUE_LIST(1).VALUE_LIST.COUNT LOOP',
'        BEGIN',
'            APEX_PLUGIN_UTIL.SET_COMPONENT_VALUES(',
'                P_COLUMN_VALUE_LIST => L_COLUMN_VALUE_LIST,',
'                P_ROW_NUM => L_ROW_NUM',
'            );',
'            ',
'            L_LABEL := APEX_PLUGIN_UTIL.ESCAPE(',
'                APEX_PLUGIN_UTIL.GET_VALUE_AS_VARCHAR2(',
'                    P_DATA_TYPE => L_COLUMN_VALUE_LIST(L_LABEL_COLUMN_NO).DATA_TYPE,',
'                    P_VALUE     => L_COLUMN_VALUE_LIST(L_LABEL_COLUMN_NO).VALUE_LIST(L_ROW_NUM)',
'                ),',
'                P_REGION.ESCAPE_OUTPUT',
'            );',
'            L_VALUE := L_COLUMN_VALUE_LIST(L_VALUE_COLUMN_NO).VALUE_LIST(L_ROW_NUM).NUMBER_VALUE;',
'            IF L_COLOR_COLUMN_NO IS NOT NULL THEN',
'                L_COLOR := APEX_PLUGIN_UTIL.ESCAPE(',
'                    APEX_PLUGIN_UTIL.GET_VALUE_AS_VARCHAR2(',
'                        P_DATA_TYPE => L_COLUMN_VALUE_LIST(L_COLOR_COLUMN_NO).DATA_TYPE,',
'                        P_VALUE     => L_COLUMN_VALUE_LIST(L_COLOR_COLUMN_NO).VALUE_LIST(L_ROW_NUM)',
'                    ),',
'                    TRUE',
'                );',
'            END IF;',
'',
'            IF C_LINK_TARGET IS NOT NULL THEN',
'                L_LINK := WWV_FLOW_UTILITIES.PREPARE_URL(',
'                    APEX_PLUGIN_UTIL.REPLACE_SUBSTITUTIONS (',
'                        P_VALUE => C_LINK_TARGET,',
'                        P_ESCAPE => FALSE',
'                    )',
'                );',
'            END IF;',
'            ',
'            -- write the data to our output buffer',
'            SYS.HTP.P(',
'                CASE WHEN L_ROW_NUM > 1 THEN '','' END ||',
'                ''{'' ||',
'                    APEX_JAVASCRIPT.ADD_ATTRIBUTE(''label'', L_LABEL) ||',
'                    APEX_JAVASCRIPT.ADD_ATTRIBUTE(''color'', L_COLOR) ||',
'                    APEX_JAVASCRIPT.ADD_ATTRIBUTE(''link'', L_LINK) ||',
'                    APEX_JAVASCRIPT.ADD_ATTRIBUTE(''value'', L_VALUE, FALSE, FALSE ) ||',
'                ''}'' );',
'',
'            APEX_PLUGIN_UTIL.CLEAR_COMPONENT_VALUES;',
'        EXCEPTION WHEN OTHERS THEN',
'            APEX_PLUGIN_UTIL.CLEAR_COMPONENT_VALUES;',
'            RAISE;',
'        END;',
'    END LOOP;',
'    SYS.HTP.PRN('']'');',
'',
'    RETURN NULL;',
'END AJAX;'))
,p_render_function=>'RENDER'
,p_ajax_function=>'AJAX'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT'
,p_sql_min_column_count=>1
,p_sql_examples=>'SELECT DEPT.DEPTNO, NVL(DEPT.DNAME, ''UNDEFINED'') LABEL, COUNT(1) VALUE FROM EMP LEFT JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO GROUP BY DEPT.DEPTNO, DEPT.DNAME;'
,p_substitute_attributes=>false
,p_subscribe_plugin_settings=>true
,p_help_text=>'Data Driven Documents (D3) Pie / Donut Chart provides dynamic and interactive bar charts for data visualization, using Scalable Vector Graphics (SVG), JavaScript, HTML5, and Cascading Style Sheets (CSS3) standards.'
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>28
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35119254582271005)
,p_plugin_id=>wwv_flow_api.id(2149395099163409644)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Label Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35119667986271005)
,p_plugin_id=>wwv_flow_api.id(2149395099163409644)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Value Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35119988298271005)
,p_plugin_id=>wwv_flow_api.id(2149395099163409644)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>110
,p_prompt=>'Colors Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(35123536052271008)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'SQL'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Select the column from the region SQL Query that holds the color codes for the chart. The color can be set using hex values or as the name of the color.</p>',
'<p>Note: If no column is entered then the color will automatically be calculated.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35120418070271006)
,p_plugin_id=>wwv_flow_api.id(2149395099163409644)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_reference_scope=>'ROW'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a chart entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35120792673271006)
,p_plugin_id=>wwv_flow_api.id(2149395099163409644)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>30
,p_prompt=>'Width '
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the width of the pie chart you want to create. For example, setting the width to 100 will create a pie chart that is a maximum of 100 pixels wide and 100 pixels in height.</p>',
'<p>Note: If no value is specified, the pie chart will consume all the space of the containing region. </p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35121187956271006)
,p_plugin_id=>wwv_flow_api.id(2149395099163409644)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Inner Radius '
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_unit=>'px'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(35133679664271015)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'DONUT'
,p_help_text=>'Enter the radius of the hole inside the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35121613422271007)
,p_plugin_id=>wwv_flow_api.id(2149395099163409644)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Display Options'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Check which attributes are shown on the pie chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35122034486271007)
,p_plugin_attribute_id=>wwv_flow_api.id(35121613422271007)
,p_display_sequence=>10
,p_display_value=>'Tooltip'
,p_return_value=>'TOOLTIP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35122514343271007)
,p_plugin_attribute_id=>wwv_flow_api.id(35121613422271007)
,p_display_sequence=>30
,p_display_value=>'Labels'
,p_return_value=>'LABELS'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35122997437271008)
,p_plugin_attribute_id=>wwv_flow_api.id(35121613422271007)
,p_display_sequence=>40
,p_display_value=>'Percentages'
,p_return_value=>'PERCENTAGES'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35123536052271008)
,p_plugin_id=>wwv_flow_api.id(2149395099163409644)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>100
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'MODERN'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select the color scheme used to render the chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35123932258271008)
,p_plugin_attribute_id=>wwv_flow_api.id(35123536052271008)
,p_display_sequence=>5
,p_display_value=>'Theme'
,p_return_value=>'THEME'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35124403273271009)
,p_plugin_attribute_id=>wwv_flow_api.id(35123536052271008)
,p_display_sequence=>10
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35124928068271009)
,p_plugin_attribute_id=>wwv_flow_api.id(35123536052271008)
,p_display_sequence=>20
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35125443196271009)
,p_plugin_attribute_id=>wwv_flow_api.id(35123536052271008)
,p_display_sequence=>30
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35125934198271010)
,p_plugin_attribute_id=>wwv_flow_api.id(35123536052271008)
,p_display_sequence=>40
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35126447986271010)
,p_plugin_attribute_id=>wwv_flow_api.id(35123536052271008)
,p_display_sequence=>50
,p_display_value=>'SQL Column'
,p_return_value=>'SQL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35126955510271010)
,p_plugin_attribute_id=>wwv_flow_api.id(35123536052271008)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35127459781271011)
,p_plugin_id=>wwv_flow_api.id(2149395099163409644)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>120
,p_prompt=>'Custom Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(35123536052271008)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_help_text=>'<p>Enter a list of CSS supported colors separated by colons.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35127822878271011)
,p_plugin_id=>wwv_flow_api.id(2149395099163409644)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>90
,p_prompt=>'Value Format Mask'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the data format mask for the pie slices.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35128227994271011)
,p_plugin_attribute_id=>wwv_flow_api.id(35127822878271011)
,p_display_sequence=>10
,p_display_value=>'14,435'
,p_return_value=>',.0f'
,p_help_text=>'Comma-separated thousands, integers'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35128717781271011)
,p_plugin_attribute_id=>wwv_flow_api.id(35127822878271011)
,p_display_sequence=>20
,p_display_value=>'14435'
,p_return_value=>'.0f'
,p_help_text=>'Integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35129274983271012)
,p_plugin_attribute_id=>wwv_flow_api.id(35127822878271011)
,p_display_sequence=>30
,p_display_value=>'14,435.49'
,p_return_value=>',.2f'
,p_help_text=>'Comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35129678441271012)
,p_plugin_attribute_id=>wwv_flow_api.id(35127822878271011)
,p_display_sequence=>40
,p_display_value=>'14435.49'
,p_return_value=>'.2f'
,p_help_text=>'2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35130211751271012)
,p_plugin_attribute_id=>wwv_flow_api.id(35127822878271011)
,p_display_sequence=>50
,p_display_value=>'14.4k'
,p_return_value=>'.3s'
,p_help_text=>'Precision 3, SI suffixes'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35130713040271013)
,p_plugin_attribute_id=>wwv_flow_api.id(35127822878271011)
,p_display_sequence=>60
,p_display_value=>'$14,435'
,p_return_value=>'$,.0f'
,p_help_text=>'Currency, comma-separated thousands, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35131222212271013)
,p_plugin_attribute_id=>wwv_flow_api.id(35127822878271011)
,p_display_sequence=>70
,p_display_value=>'$14435'
,p_return_value=>'$.0f'
,p_help_text=>'Currency, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35131715011271013)
,p_plugin_attribute_id=>wwv_flow_api.id(35127822878271011)
,p_display_sequence=>80
,p_display_value=>'$14,435.49'
,p_return_value=>'$,.2f'
,p_help_text=>'Currency, comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35132184688271014)
,p_plugin_attribute_id=>wwv_flow_api.id(35127822878271011)
,p_display_sequence=>90
,p_display_value=>'$14435.49'
,p_return_value=>'$.2f'
,p_help_text=>'Currency, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35132715429271014)
,p_plugin_attribute_id=>wwv_flow_api.id(35127822878271011)
,p_display_sequence=>100
,p_display_value=>'$14.4k'
,p_return_value=>'$.3s'
,p_help_text=>'Currency, precison 3, SI suffixes'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35133238923271014)
,p_plugin_attribute_id=>wwv_flow_api.id(35127822878271011)
,p_display_sequence=>110
,p_display_value=>'FRIENDLY'
,p_return_value=>'friendly'
,p_help_text=>'Automatically use SI units for thousands and millions'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35133679664271015)
,p_plugin_id=>wwv_flow_api.id(2149395099163409644)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>50
,p_prompt=>'Chart Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'PIE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether to display a pie chart or donut chart.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35134102816271015)
,p_plugin_attribute_id=>wwv_flow_api.id(35133679664271015)
,p_display_sequence=>10
,p_display_value=>'Pie'
,p_return_value=>'PIE'
,p_help_text=>'A normal Pie Chart'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35134594382271015)
,p_plugin_attribute_id=>wwv_flow_api.id(35133679664271015)
,p_display_sequence=>20
,p_display_value=>'Donut'
,p_return_value=>'DONUT'
,p_help_text=>'A pie chart with a hole in the middle'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35135173847271016)
,p_plugin_id=>wwv_flow_api.id(2149395099163409644)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>80
,p_prompt=>'Legend'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(35121613422271007)
,p_depending_on_condition_type=>'NOT_NULL'
,p_lov_type=>'STATIC'
,p_null_text=>'No Legend'
,p_help_text=>'Select the position of the legend when it is being displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35135519201271016)
,p_plugin_attribute_id=>wwv_flow_api.id(35135173847271016)
,p_display_sequence=>10
,p_display_value=>'Above Chart'
,p_return_value=>'TOP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35136049962271016)
,p_plugin_attribute_id=>wwv_flow_api.id(35135173847271016)
,p_display_sequence=>20
,p_display_value=>'Below Chart'
,p_return_value=>'BOTTOM'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_d3_barchart
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(2251415161526733627)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.D3.BARCHART'
,p_display_name=>'D3 Bar Chart'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.D3.BARCHART'),'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.barchart/')
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/d3/3.5.5/d3.min.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/d3.oracle.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/oracle.jql.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/jquery.getScrollbarWidth.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.tooltip/d3.oracle.tooltip.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.ary/d3.oracle.ary.js',
'#PLUGIN_FILES#d3.oracle.barchart.js',
'#PLUGIN_FILES#d3.oracle.barchart.apex.js',
'#PLUGIN_FILES#com.oracle.apex.d3.barchart.js'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.tooltip/d3.oracle.tooltip.css',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.ary/d3.oracle.ary.css',
'#PLUGIN_FILES#d3.oracle.barchart.css'))
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render ',
'(',
'    p_region                in  apex_plugin.t_region,',
'    p_plugin                in  apex_plugin.t_plugin,',
'    p_is_printer_friendly   in  boolean ',
')',
'return apex_plugin.t_region_render_result',
'is',
'    c_region_static_id      constant varchar2(255)  := apex_escape.html_attribute( p_region.static_id );',
'',
'-- Assign readable names to plugin attributes. Omit data attributes, they''ll be handled in ajax function.',
'    -- Dimensions',
'    c_height_mode           constant varchar2(200)  := p_region.attribute_21;',
'    c_min_height            constant number         := nvl(p_region.attribute_18, 100);',
'    c_max_height            constant number         := nvl(p_region.attribute_19, 500);',
'    c_spacing               constant number         := nvl(p_region.attribute_16, 20);',
'    c_inner_spacing         constant number         := nvl(p_region.attribute_17, 20);',
'',
'    -- Axis titles',
'    c_x_axis_title          constant varchar2(200)  := p_region.attribute_08;',
'    c_y_axis_title          constant varchar2(200)  := p_region.attribute_09;',
'',
'    -- Axis grid',
'    c_x_axis_grid           constant boolean        := instr('':'' || p_region.attribute_22 || '':'', '':X:'') > 0;',
'    c_y_axis_grid           constant boolean        := instr('':'' || p_region.attribute_22 || '':'', '':Y:'') > 0;',
'',
'    -- Tooltip configuration',
'    c_show_tooltip          constant boolean        := p_region.attribute_10 is not null;',
'    c_series_tooltip        constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':SERIES:'') > 0;',
'    c_x_tooltip             constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':X:'') > 0;',
'    c_y_tooltip             constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':Y:'') > 0;',
'    c_custom_tooltip        constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':CUSTOM:'') > 0;',
'',
'    -- Legend',
'    c_show_legend           constant boolean        := p_region.attribute_12 is not null;',
'    c_legend_position       constant varchar2(200)  := p_region.attribute_12;',
'',
'    -- Display modes',
'    c_value_template        constant varchar2(200)  := nvl(p_region.attribute_15, p_region.attribute_25);',
'    c_horizontal            constant boolean        := substr(p_region.attribute_06, 1, instr(p_region.attribute_06, '','') - 1) = ''HORIZONTAL'';',
'    c_display               constant varchar2(200)  := substr(p_region.attribute_06, instr(p_region.attribute_06, '','') + 1);',
'    c_responsive            constant boolean        := p_plugin.attribute_06 = ''Y'';',
'    c_transitions           constant boolean        := p_plugin.attribute_05 = ''Y'';',
'',
'    -- Colors',
'    c_color_scheme          constant varchar2(200)  := p_region.attribute_13;',
'    l_colors                varchar2(200)           := p_region.attribute_14;',
'    c_multiple_colors       constant boolean        := p_region.attribute_24 = ''Y'';',
'',
'    -- Aspect ratios',
'    c_min_ar                constant number         := nvl( apex_plugin_util.get_attribute_as_number( p_plugin.attribute_02, ''Min Aspect Radio'' ), 1.333);',
'    c_max_ar                constant number         := nvl( apex_plugin_util.get_attribute_as_number( p_plugin.attribute_01, ''Max Aspect Radio'' ), 3);',
'    c_threshold             constant number         := p_plugin.attribute_03;',
'    c_threshold_of          constant varchar2(200)  := p_plugin.attribute_04;',
'',
'    -- Function constants',
'    c_rgb_list_regex        constant varchar2(200)  := ''^#[0-9a-fA-F]{6}(,#[0-9a-fA-F]{6})*$'';',
'begin',
'    -- Add placeholder div',
'    sys.htp.p (',
'        ''<div class="a-D3BarChart" id="'' || c_region_static_id || ''_region">'' ||',
'            ''<div class="a-D3BarChart-container" id="'' || c_region_static_id || ''_chart"></div>'' ||',
'        ''</div>'' );',
'',
'',
'    -- Color scheme',
'    case c_color_scheme',
'        when ''MODERN'' then',
'            l_colors := ''#FF3B30:#FF9500:#FFCC00:#4CD964:#34AADC:#007AFF:#5856D6:#FF2D55:#8E8E93:#C7C7CC'';',
'        when ''MODERN2'' then',
'            l_colors := ''#1ABC9C:#2ECC71:#4AA3DF:#9B59B6:#3D566E:#F1C40F:#E67E22:#E74C3C'';',
'        when ''SOLAR'' then',
'            l_colors := ''#B58900:#CB4B16:#DC322F:#D33682:#6C71C4:#268BD2:#2AA198:#859900'';',
'        when ''METRO'' then',
'            l_colors := ''#E61400:#19A2DE:#319A31:#EF9608:#8CBE29:#A500FF:#00AAAD:#FF0094:#9C5100:#E671B5'';',
'        else',
'            null;',
'    end case;',
'',
'    -- Build the initial chart. Data will be loaded with ajax.',
'    apex_javascript.add_onload_code (',
'        p_code => ''(function(){ var a = com_oracle_apex_d3_barchart('' ||',
'            apex_javascript.add_value(p_region.static_id) ||',
'            ''{'' ||',
'                apex_javascript.add_attribute(''chartRegionId'',  p_region.static_id || ''_chart'') ||',
'                apex_javascript.add_attribute(''xAxisTitle'',     c_x_axis_title) || ',
'                apex_javascript.add_attribute(''yAxisTitle'',     c_y_axis_title) || ',
'                apex_javascript.add_attribute(''showTooltip'',    c_show_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipSeries'',  c_series_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipX'',       c_x_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipY'',       c_y_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipCustom'',  c_custom_tooltip) || ',
'                apex_javascript.add_attribute(''spacing'',        c_spacing) || ',
'                apex_javascript.add_attribute(''innerSpacing'',   c_inner_spacing) || ',
'                apex_javascript.add_attribute(''horizontal'',     c_horizontal) || ',
'                apex_javascript.add_attribute(''display'',        c_display) || ',
'                apex_javascript.add_attribute(''responsive'',     c_responsive) || ',
'                apex_javascript.add_attribute(''transitions'',    c_transitions) || ',
'                apex_javascript.add_attribute(''valueTemplate'',  c_value_template) || ',
'                apex_javascript.add_attribute(''showLegend'',     c_show_legend) || ',
'                apex_javascript.add_attribute(''legendPosition'', c_legend_position) || ',
'                apex_javascript.add_attribute(''colors'',         l_colors) || ',
'                apex_javascript.add_attribute(''xGrid'',          c_x_axis_grid) || ',
'                apex_javascript.add_attribute(''yGrid'',          c_y_axis_grid) || ',
'                apex_javascript.add_attribute(''multipleColors'', c_multiple_colors) || ',
'                apex_javascript.add_attribute(''heightMode'',     c_height_mode) || ',
'                apex_javascript.add_attribute(''minHeight'',      c_min_height) || ',
'                apex_javascript.add_attribute(''maxHeight'',      c_max_height) || ',
'                apex_javascript.add_attribute(''threshold'',      c_threshold) || ',
'                apex_javascript.add_attribute(''thresholdOf'',    c_threshold_of) || ',
'                apex_javascript.add_attribute(''minAR'',          c_min_ar) || ',
'                apex_javascript.add_attribute(''maxAR'',          c_max_ar) || ',
'                apex_javascript.add_attribute(''noDataFoundMessage'', p_region.no_data_found_message) || ',
'                apex_javascript.add_attribute(''pageItems'',      apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                apex_javascript.add_attribute(''ajaxIdentifier'', apex_plugin.get_ajax_identifier, false, false) ||',
'            ''},'' || apex_javascript.add_value( p_region.name, false ) || '');})()'' );',
'    return null;',
'end;',
'',
'function ajax',
'(',
'    p_region    in  apex_plugin.t_region,',
'    p_plugin    in  apex_plugin.t_plugin ',
')',
'return apex_plugin.t_region_ajax_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones, ',
'    -- makes the code more readable. ',
'',
'    c_has_multiple_series   constant boolean := p_region.attribute_03 is not null;',
'',
'    -- Column names',
'    c_x_column              constant varchar2(255) := p_region.attribute_01;',
'    c_y_column              constant varchar2(255) := p_region.attribute_02;',
'    c_series_column         constant varchar2(255) := case when c_has_multiple_series then p_region.attribute_04 end;',
'    c_tooltip_column        constant varchar2(255) := p_region.attribute_11;',
'    c_link_target           constant varchar2(255) := p_region.attribute_20;',
'',
'    -- Series name, for single series configuration',
'    c_series_name           constant varchar2(200) := case when not c_has_multiple_series then p_region.attribute_05 end;',
'    c_use_sql_color         constant boolean       := p_region.attribute_13 = ''COLUMN'';',
'',
'    -- Column numbers for fetching',
'    l_x_column_no           pls_integer;',
'    l_y_column_no           pls_integer;',
'    l_series_column_no      pls_integer;',
'    l_tooltip_column_no     pls_integer;',
'    l_column_value_list     apex_plugin_util.t_column_value_list2;',
'',
'    -- Holders for row data',
'    l_x                     varchar2(200);',
'    l_y                     number;',
'    l_series                varchar2(4000);',
'    l_color                 varchar2(4000);',
'    l_tooltip               varchar2(4000);',
'    l_link                  varchar2(4000);',
'',
'begin',
'',
'    apex_json.initialize_output (',
'        p_http_cache => false );',
'',
'    apex_json.open_object;',
'',
'    -- First, we must get the color mapping if the color scheme requires it.',
'    if c_use_sql_color then',
'        l_column_value_list := apex_plugin_util.get_data2 (',
'            p_sql_statement     => p_region.attribute_23,',
'            p_min_columns       => 2,',
'            p_max_columns       => 2,',
'            p_component_name    => p_region.name );',
'',
'        apex_json.open_array(''colors'');',
'        for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'            -- Series, optional',
'            l_series := apex_plugin_util.get_value_as_varchar2 (',
'                p_data_type => l_column_value_list(1).data_type,',
'                p_value     => l_column_value_list(1).value_list(l_row_num) );',
'            l_color := apex_plugin_util.get_value_as_varchar2 (',
'                p_data_type => l_column_value_list(2).data_type,',
'                p_value     => l_column_value_list(2).value_list(l_row_num) );',
'            ',
'            apex_json.open_object;',
'            apex_json.write(''series'', l_series);',
'            apex_json.write(''color'',  l_color);',
'            apex_json.close_object;',
'',
'        end loop;',
'        apex_json.close_array;',
'',
'        l_series := null;',
'    end if;',
'',
'    -- Then, we get the actual data points.',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'        p_sql_statement  => p_region.source,',
'        p_min_columns    => 2,',
'        p_max_columns    => 5,',
'        p_component_name => p_region.name );',
'',
'    -- Get the actual column # for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_x_column_no := apex_plugin_util.get_column_no (',
'                p_attribute_label       => ''x column'',',
'                p_column_alias          => c_x_column,',
'                p_column_value_list     => l_column_value_list,',
'                p_is_required           => true,',
'                p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_y_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''y column'',',
'        p_column_alias          => c_y_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => true,',
'        p_data_type             => apex_plugin_util.c_data_type_number );',
'',
'    l_series_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''series column'',',
'        p_column_alias          => c_series_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => false,',
'        p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_tooltip_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''tooltip column'',',
'        p_column_alias          => c_tooltip_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => false,',
'        p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    apex_json.open_array(''data'');',
'',
'    -- Fetch data',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num => l_row_num ',
'            );',
'',
'            -- X is a string, required',
'            if l_x_column_no is not null then',
'                l_x := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_x_column_no).data_type,',
'                    p_value     => l_column_value_list(l_x_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Y is a number, required',
'            l_y := l_column_value_list(l_y_column_no).value_list(l_row_num).number_value;',
'',
'            -- Series, optional',
'            if l_series_column_no is not null then',
'                l_series := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_series_column_no).data_type,',
'                    p_value     => l_column_value_list(l_series_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Tooltip, optional',
'            if l_tooltip_column_no is not null then',
'                l_tooltip := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_tooltip_column_no).data_type,',
'                    p_value     => l_column_value_list(l_tooltip_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Link, optional',
'            if c_link_target is not null then',
'                l_link := wwv_flow_utilities.prepare_url (',
'                    apex_plugin_util.replace_substitutions (',
'                        p_value  => c_link_target,',
'                        p_escape => false ) );',
'            end if;',
'',
'            apex_json.open_object;',
'            apex_json.write(''series'',  nvl(l_series, c_series_name));',
'            apex_json.write(''tooltip'', l_tooltip);',
'            apex_json.write(''link'',    l_link);',
'            apex_json.write(''x'',       l_x);',
'            apex_json.write(''y'',       l_y);',
'            apex_json.close_object;',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    apex_json.close_array;',
'    apex_json.close_object;',
'',
'    return null;',
'end;'))
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE'
,p_sql_min_column_count=>2
,p_sql_max_column_count=>5
,p_substitute_attributes=>false
,p_subscribe_plugin_settings=>true
,p_help_text=>'Data Driven Documents (D3) Bar Chart provides dynamic and interactive bar charts for data visualization, using Scalable Vector Graphics (SVG), JavaScript, HTML5, and Cascading Style Sheets (CSS3) standards.'
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>58
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668132845310754900)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>510
,p_prompt=>'Maximum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'3'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the maximum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Maximum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668133232232754901)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>500
,p_prompt=>'Minimum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'1.333'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the minimum aspect ratio that charts use to recommend a height. A minimum aspect ratio of 1.333 means that the chart''s width should be no less than 1.333 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Minimum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668133646284754901)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>540
,p_prompt=>'Responsive Behavior Threshold'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'480'
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the threshold (in pixels) at which the responsive behavior will be activated.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668134007855754901)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>530
,p_prompt=>'Responsive Behavior Measure'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'WINDOW'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether the responsive behavior threshold will be compared to the window or the region width.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668134415285754901)
,p_plugin_attribute_id=>wwv_flow_api.id(2668134007855754901)
,p_display_sequence=>10
,p_display_value=>'Window'
,p_return_value=>'WINDOW'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668134934856754901)
,p_plugin_attribute_id=>wwv_flow_api.id(2668134007855754901)
,p_display_sequence=>20
,p_display_value=>'Region'
,p_return_value=>'REGION'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668135407153754901)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>5
,p_display_sequence=>550
,p_prompt=>'Enable Transitions'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Select whether transitions are enabled for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668135838088754902)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>6
,p_display_sequence=>520
,p_prompt=>'Responsive Behavior'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Select whether responsive behavior is enabled for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668136178113754902)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'X Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the X-axis values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668136646162754902)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Y Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the Y-axis values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668137000084754903)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>50
,p_prompt=>'Multiple Series'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Check multiple series if you want the chart displaying more than one series of data. The different series must be specified by a column from the region SQL Query.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668137401777754903)
,p_plugin_attribute_id=>wwv_flow_api.id(2668137000084754903)
,p_display_sequence=>10
,p_display_value=>' '
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668137878856754903)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>60
,p_prompt=>'Series Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2668137000084754903)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Select the column from the region SQL Query that defines the multiple series for the chart. The values from this column will become the labels for the series.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668138320520754903)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>70
,p_prompt=>'Series Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(2668137000084754903)
,p_depending_on_condition_type=>'NULL'
,p_help_text=>'Enter the name of the single data series which is shown on the legend.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668138729788754903)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>40
,p_prompt=>'Display'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'VERTICAL,SIDE-BY-SIDE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the bar chart data is displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668139067715754903)
,p_plugin_attribute_id=>wwv_flow_api.id(2668138729788754903)
,p_display_sequence=>10
,p_display_value=>'Vertical, Side by Side'
,p_return_value=>'VERTICAL,SIDE-BY-SIDE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668139651848754904)
,p_plugin_attribute_id=>wwv_flow_api.id(2668138729788754903)
,p_display_sequence=>20
,p_display_value=>'Horizontal, Side by Side'
,p_return_value=>'HORIZONTAL,SIDE-BY-SIDE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668140058116754904)
,p_plugin_attribute_id=>wwv_flow_api.id(2668138729788754903)
,p_display_sequence=>30
,p_display_value=>'Vertical, Stacked'
,p_return_value=>'VERTICAL,STACKED'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668140601895754904)
,p_plugin_attribute_id=>wwv_flow_api.id(2668138729788754903)
,p_display_sequence=>40
,p_display_value=>'Horizontal, Stacked'
,p_return_value=>'HORIZONTAL,STACKED'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668141106053754904)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>90
,p_prompt=>'X-Axis Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>20
,p_is_translatable=>true
,p_help_text=>'Enter the label for the X-axis.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668141498655754904)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>100
,p_prompt=>'Y-Axis Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>20
,p_is_translatable=>true
,p_help_text=>'The label for the Y-axis.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668141941149754905)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>130
,p_prompt=>'Tooltips'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Check which attributes are shown on the tooltip for each data point. The ''Custom column'' option allows you to specify text for each individual data point as an additional column in the region SQL Query.</p>',
'<p>Note: Leave all options unchecked to disable the tooltip.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668142273665754905)
,p_plugin_attribute_id=>wwv_flow_api.id(2668141941149754905)
,p_display_sequence=>0
,p_display_value=>'Show series name'
,p_return_value=>'SERIES'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668142762641754905)
,p_plugin_attribute_id=>wwv_flow_api.id(2668141941149754905)
,p_display_sequence=>10
,p_display_value=>'Show X value'
,p_return_value=>'X'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668143333336754905)
,p_plugin_attribute_id=>wwv_flow_api.id(2668141941149754905)
,p_display_sequence=>20
,p_display_value=>'Show Y value'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668143792693754907)
,p_plugin_attribute_id=>wwv_flow_api.id(2668141941149754905)
,p_display_sequence=>30
,p_display_value=>'Custom column'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668144281880754907)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>140
,p_prompt=>'Tooltip Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2668141941149754905)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'SERIES:X:Y:CUSTOM,SERIES:X:CUSTOM,SERIES:Y:CUSTOM,X:Y:CUSTOM,SERIES:CUSTOM,X:CUSTOM,Y:CUSTOM,CUSTOM'
,p_help_text=>'Enter the column from the region SQL Query that holds the custom tooltip values.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668144696752754907)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>150
,p_prompt=>'Legend'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'No Legend'
,p_help_text=>'Select where the legend is displayed on the chart.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668145088523754907)
,p_plugin_attribute_id=>wwv_flow_api.id(2668144696752754907)
,p_display_sequence=>10
,p_display_value=>'Above chart'
,p_return_value=>'TOP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668145606486754907)
,p_plugin_attribute_id=>wwv_flow_api.id(2668144696752754907)
,p_display_sequence=>20
,p_display_value=>'Below chart'
,p_return_value=>'BOTTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668146148191754908)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>250
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'MODERN'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Theme Default'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Select the color scheme used to render the chart.</p>',
'<p>Note: For multiple series charts, each series will be assigned a different color depending on the setting for ''Multiple Colors''.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668146506100754908)
,p_plugin_attribute_id=>wwv_flow_api.id(2668146148191754908)
,p_display_sequence=>10
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668147044102754908)
,p_plugin_attribute_id=>wwv_flow_api.id(2668146148191754908)
,p_display_sequence=>20
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668147550993754908)
,p_plugin_attribute_id=>wwv_flow_api.id(2668146148191754908)
,p_display_sequence=>30
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668148014368754909)
,p_plugin_attribute_id=>wwv_flow_api.id(2668146148191754908)
,p_display_sequence=>40
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668149051874754909)
,p_plugin_attribute_id=>wwv_flow_api.id(2668146148191754908)
,p_display_sequence=>50
,p_display_value=>'SQL Query'
,p_return_value=>'COLUMN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668148471929754909)
,p_plugin_attribute_id=>wwv_flow_api.id(2668146148191754908)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668149458093754909)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>260
,p_prompt=>'Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2668146148191754908)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>RGB color notation  (red,green,blue)</dt><dd><pre>rgba(0,25,47,0.5)</pre>; or </dd>',
'  <dt>RGBA color notation (red,green,blue,alpha)</dt><dd><pre>rgba(0,25,47,0.5)</pre>; or </dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>'<p>Enter a colon-separated list of color strings for the custom colors to be used in the chart.</p>'
);
end;
/
begin
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668149944541754909)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>120
,p_prompt=>'Custom Value Formatting'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'FRIENDLY'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2668155911822754913)
,p_depending_on_condition_type=>'NULL'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul>',
'<li><b>,d</b> = 14,435</li>',
'<li><b>d</b> = 14435</li>',
'<li><b>,.2f</b> = 14,435.49</li>',
'<li><b>.2f</b> = 14435.49</li>',
'<li><b>.3s</b> = 14.4k</li>',
'<li><b>$,d</b> = $14,435</li>',
'<li><b>$d</b> = $14435</li>',
'<li><b>$,.2f</b> = $14,435.49</li>',
'<li><b>$.2f</b> = $14435.49</li>',
'<li><b>$.3s</b> = $14.4k</li>',
'<li><b>n" ft."</b> = 14435.49 ft. **</li>',
'<li><b>"[["$.3s"]]"</b> = [[$14.4k]] **</li>',
'<li>Refer to https://github.com/mbostock/d3/wiki/Formatting#d3_format for the full syntax specification</li>',
'</ul>',
'<br/>',
'** You may use leading and trailing double-quoted literals, but this feature is not part of the standard D3 specification'))
,p_help_text=>'Enter the D3 format string used to format the Y-axis values on axes, tooltips and legends. Use <pre>FRIENDLY</pre> to utilize sensible formatting defaults for your data.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668150273456754909)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>200
,p_prompt=>'Spacing Between Categories'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'10'
,p_display_length=>5
,p_max_length=>3
,p_unit=>'%'
,p_is_translatable=>false
,p_help_text=>'Enter the spacing between categories, expressed as an integer percentage (1-100).'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668150682410754910)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>210
,p_prompt=>'Spacing Between Series'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'10'
,p_display_length=>5
,p_max_length=>3
,p_unit=>'%'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2668137000084754903)
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the spacing between series on the same category (X-axis value). It is represented as an integer percentage (0-100).</p>',
'<p>Note: This setting only affects charts using the "Side by Side" display modes.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668151143092754911)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_prompt=>'Minimum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_display_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the minimum height, in pixels, of the chart. Chart width will adapt to the size of the region. Defaults to 100px.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668151461994754911)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_prompt=>'Maximum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_display_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'The maximum height, in pixels, of the chart. Chart width will adapt to the size of the region. Defaults to 500px.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668151887247754911)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>30
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_reference_scope=>'ROW'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a chart entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668152351492754911)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>170
,p_prompt=>'Height Measure'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'BARS'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the minimum and maximum height of the chart is calculated.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668153242629754911)
,p_plugin_attribute_id=>wwv_flow_api.id(2668152351492754911)
,p_display_sequence=>10
,p_display_value=>'Bars Area'
,p_return_value=>'BARS'
,p_help_text=>'Minimum and maximum height for the area is determined by the height of the the bars drawn. Axis labels may take additional space.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668152715379754911)
,p_plugin_attribute_id=>wwv_flow_api.id(2668152351492754911)
,p_display_sequence=>20
,p_display_value=>'Chart Area'
,p_return_value=>'CHART'
,p_help_text=>'Minimum and maximum height will include the axes dimensions.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668153706950754913)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>160
,p_prompt=>'Show Grid Lines'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Check the axes to display grid lines for that axis.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668154058247754913)
,p_plugin_attribute_id=>wwv_flow_api.id(2668153706950754913)
,p_display_sequence=>10
,p_display_value=>'X-Axis'
,p_return_value=>'X'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668154569444754913)
,p_plugin_attribute_id=>wwv_flow_api.id(2668153706950754913)
,p_display_sequence=>20
,p_display_value=>'Y-Axis'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668155092483754913)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>23
,p_display_sequence=>270
,p_prompt=>'Color SQL Query'
,p_attribute_type=>'SQL'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_sql_min_column_count=>2
,p_sql_max_column_count=>2
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2668146148191754908)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'COLUMN'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>select ''SALES'', rgb(0,255,0)',
'from dual',
'UNION',
'select ''RESEARCH'', rgba(0,25,47,0.5)',
'from dual;</pre>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Enter a SQL Query that maps a series name to an RGB color. The first column must contain the series names (and those values must match the ones returned from the region SQL) and the second column must have the RGB or RGBA color notation for the serie'
||'s. ',
'Both columns must be VARCHAR2.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668155495169754913)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>80
,p_prompt=>'Multiple Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2668137000084754903)
,p_depending_on_condition_type=>'NULL'
,p_help_text=>'Select whether each series is displayed in a different color.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2668155911822754913)
,p_plugin_id=>wwv_flow_api.id(2251415161526733627)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>110
,p_prompt=>'Value Format Mask'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Custom'
,p_help_text=>'Select the format mask to apply to the displayed values.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668157354151754915)
,p_plugin_attribute_id=>wwv_flow_api.id(2668155911822754913)
,p_display_sequence=>30
,p_display_value=>'14,435'
,p_return_value=>',.0f'
,p_help_text=>'Comma-separated thousands, integers'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668157800089754915)
,p_plugin_attribute_id=>wwv_flow_api.id(2668155911822754913)
,p_display_sequence=>40
,p_display_value=>'14435'
,p_return_value=>'.0f'
,p_help_text=>'Integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668158797981754915)
,p_plugin_attribute_id=>wwv_flow_api.id(2668155911822754913)
,p_display_sequence=>60
,p_display_value=>'14,435.49'
,p_return_value=>',.2f'
,p_help_text=>'Comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668159299955754916)
,p_plugin_attribute_id=>wwv_flow_api.id(2668155911822754913)
,p_display_sequence=>70
,p_display_value=>'14435.49'
,p_return_value=>'.2f'
,p_help_text=>'2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668158342544754915)
,p_plugin_attribute_id=>wwv_flow_api.id(2668155911822754913)
,p_display_sequence=>71
,p_display_value=>'14.4k'
,p_return_value=>'.3s'
,p_help_text=>'Precision 3, SI suffixes'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668159801966754917)
,p_plugin_attribute_id=>wwv_flow_api.id(2668155911822754913)
,p_display_sequence=>80
,p_display_value=>'$14,435'
,p_return_value=>'$,.0f'
,p_help_text=>'Currency, comma-separated thousands, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668160300702754917)
,p_plugin_attribute_id=>wwv_flow_api.id(2668155911822754913)
,p_display_sequence=>90
,p_display_value=>'$14435'
,p_return_value=>'$.0f'
,p_help_text=>'Currency, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668156281512754914)
,p_plugin_attribute_id=>wwv_flow_api.id(2668155911822754913)
,p_display_sequence=>99
,p_display_value=>'$14,435.49'
,p_return_value=>'$,.2f'
,p_help_text=>'Currency, comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668160820880754917)
,p_plugin_attribute_id=>wwv_flow_api.id(2668155911822754913)
,p_display_sequence=>100
,p_display_value=>'$14435.49'
,p_return_value=>'$.2f'
,p_help_text=>'Currency, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2668156781083754914)
,p_plugin_attribute_id=>wwv_flow_api.id(2668155911822754913)
,p_display_sequence=>120
,p_display_value=>'$14.4k'
,p_return_value=>'$.3s'
,p_help_text=>'Currency, precison 3, SI suffixes'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_flot_pie
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(4413053519063764625)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.FLOT.PIE'
,p_display_name=>'Flot Pie Chart'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.FLOT.PIE'),'#IMAGE_PREFIX#plugins/com.oracle.apex.flot_pie/')
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/excanvas#MIN#.js',
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/jquery.flot#MIN#.js',
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/jquery.flot.resize#MIN#.js',
'#PLUGIN_FILES#jquery.flot.pie.js',
'#PLUGIN_FILES#com_oracle_apex_flot_pie.js'))
,p_css_file_urls=>'#PLUGIN_FILES#com_oracle_apex_flot_pie.css'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    -- NOTE: THIS IS THE VALUE FOR PLUGIN FILE PREFIX #IMAGE_PREFIX#plugins/com.oracle.apex.flot_pie/',
'',
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    -- determine plugin attributes and assign readable names',
'    c_color_scheme         constant varchar2(255) := p_region.attribute_15;',
'    l_colors               varchar2(2000);',
'',
'    c_pie_type             constant apex_application_page_regions.attribute_05%type := nvl(p_region.attribute_05, ''STANDARD'');',
'',
'    c_inner_radius         constant number  := apex_plugin_util.get_attribute_as_number(apex_plugin_util.replace_substitutions(nvl(p_region.attribute_14,''-1'')), ''Inner Radius'');',
'',
'    c_show_tooltip         constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':TOOLTIP:'') > 0);',
'    c_show_legend          constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':LEGEND:'') > 0);',
'    c_show_label           constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':LABEL:'')  > 0);',
'    c_show_value           constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':VALUE:'')  > 0);',
'    c_pie_width            constant number  := to_number(apex_plugin_util.replace_substitutions(p_region.attribute_06));',
'',
'    c_min_height           constant number  := to_number(nvl(p_region.attribute_17, ''100''));',
'    c_max_height           constant number  := to_number(nvl(p_region.attribute_18, ''400''));',
'',
'    c_min_ar               constant number  := greatest(apex_plugin_util.get_attribute_as_number(p_plugin.attribute_01, ''Min Aspect Ratio''), 0.25);',
'    c_max_ar               constant number  := least(apex_plugin_util.get_attribute_as_number(p_plugin.attribute_02, ''Max Aspect Ratio''), 4);',
'',
'    c_combine_slices       constant boolean := (nvl(p_region.attribute_09, ''N'') = ''Y'');',
'    c_combine_threshold    constant number  := nvl(to_number(p_region.attribute_10), 10);',
'    c_combined_slice_label constant apex_application_page_regions.attribute_11%type := nvl(p_region.attribute_11, ''Other'');',
'    c_combined_slice_link  constant apex_application_page_regions.attribute_12%type := p_region.attribute_12;',
'    c_combined_slice_color constant apex_application_page_regions.attribute_13%type := p_region.attribute_13;',
'begin',
'    -- add placeholder div for chart',
'    sys.htp.p(',
'        ''<div class="flotPieContainer"><div id="'' || apex_escape.html_attribute(p_region.static_id || ''_chart'') || ''" style="width:'' ||',
'        case when c_pie_width is null then ''auto'' else c_pie_width || ''px'' end ||',
'        ''" class="flotPieContainerInner"></div></div>'' );',
'',
'    -- Set the colors to be used, if a non-SQL scheme was selected',
'    case c_color_scheme',
'      when ''MODERN'' then',
'        l_colors := ''#FF3B30,#FF9500,#FFCC00,#4CD964,#34AADC,#007AFF,#5856D6,#FF2D55,#8E8E93,#C7C7CC'';',
'      when ''MODERN2'' then',
'        l_colors := ''#1ABC9C,#2ECC71,#4AA3DF,#9B59B6,#3D566E,#F1C40F,#E67E22,#E74C3C'';',
'      when ''SOLAR'' then',
'        l_colors := ''#B58900,#CB4B16,#DC322F,#D33682,#6C71C4,#268BD2,#2AA198,#859900'';',
'      when ''METRO'' then',
'        l_colors := ''#E61400,#19A2DE,#319A31,#EF9608,#8CBE29,#A500FF,#00AAAD,#FF0094,#9C5100,#E671B5'';',
'      when ''CUSTOM'' then',
'        l_colors := p_region.attribute_16;',
'      when ''SQL'' then',
'        l_colors := null;',
'    end case;',
'',
'    -- Initialize the Flot pie chart when the page has been rendered.',
'    -- apex_javascript.add_attribute are used to make sure that',
'    -- the values are properly escaped.   ',
'    apex_javascript.add_onload_code (',
'        p_code => ''com_oracle_apex_flot_pie('' ||',
'                  apex_javascript.add_value(p_region.static_id) ||',
'                  ''{'' ||',
'                      apex_javascript.add_attribute(''colors'',           l_colors) || ',
'                      apex_javascript.add_attribute(''type'',             c_pie_type) || ',
'                      apex_javascript.add_attribute(''innerRadius'',      c_inner_radius)||',
'                      apex_javascript.add_attribute(''minAR'',            c_min_ar)||',
'                      apex_javascript.add_attribute(''maxAR'',            c_max_ar)||',
'                      apex_javascript.add_attribute(''minHeight'',        c_min_height) || ',
'                      apex_javascript.add_attribute(''maxHeight'',        c_max_height) || ',
'                      apex_javascript.add_attribute(''showLabel'',        c_show_label) || ',
'                      apex_javascript.add_attribute(''showLegend'',       c_show_legend) ||',
'                      apex_javascript.add_attribute(''showTooltip'',      c_show_tooltip) || ',
'                      apex_javascript.add_attribute(''showValue'',        c_show_value) || ',
'                      apex_javascript.add_attribute(''combineSlices'',    c_combine_slices) || ',
'                      apex_javascript.add_attribute(''combineThreshold'', c_combine_threshold) || ',
'                      apex_javascript.add_attribute(''combineLabel'',     apex_plugin_util.escape(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_label,',
'                                                                                p_escape => false ),',
'                                                                            p_region.escape_output )) || ',
'                      apex_javascript.add_attribute(''combineUrl'',       wwv_flow_utilities.prepare_url(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_link,',
'                                                                                p_escape => false ))) ||',
'                      apex_javascript.add_attribute(''combineColor'',     apex_plugin_util.escape(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_color,',
'                                                                                p_escape => false ),',
'                                                                            true )) || ',
'                      apex_javascript.add_attribute(''noDataFoundMessage'', p_region.no_data_found_message) || ',
'                      apex_javascript.add_attribute(''pageItems'',        apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                      apex_javascript.add_attribute(''ajaxIdentifier'',   apex_plugin.get_ajax_identifier, false, false) ||',
'                  ''});'' );',
'    apex_javascript.add_onload_code (',
'        p_code => ''setTimeout(function(){$("span.pieLabel").removeAttr("id");},1000);'' );',
'',
'    return null;',
'',
'end render;',
'',
'',
'function ajax (',
'     p_region in apex_plugin.t_region,',
'     p_plugin in apex_plugin.t_plugin )',
'     return apex_plugin.t_region_ajax_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_label_column constant varchar2(255) := p_region.attribute_01;',
'    c_value_column constant varchar2(255) := p_region.attribute_02;',
'    c_color_column constant varchar2(255) := p_region.attribute_03;',
'    c_link_target  constant varchar2(255) := p_region.attribute_04;',
'',
'    l_label_column_no   pls_integer;',
'    l_value_column_no   pls_integer;',
'    l_color_column_no   pls_integer;',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'    ',
'    l_label             varchar2(4000);',
'    l_value             number;',
'    l_color             varchar2(20);',
'    l_url               varchar2(4000);',
'begin',
'    apex_plugin_util.print_json_http_header;',
'',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => p_region.source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_label_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Label Column'',',
'                             p_column_alias      => c_label_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => true,',
'                             p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'                                      ',
'    l_value_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Value Column'',',
'                             p_column_alias      => c_value_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => true,',
'                             p_data_type         => apex_plugin_util.c_data_type_number );',
'',
'    l_color_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Color Column'',',
'                             p_column_alias      => c_color_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => false,',
'                             p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    sys.htp.prn(''['');',
'',
'    -- It''s time to emit the selected rows',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num           => l_row_num );',
'',
'            -- get the label',
'            l_label := apex_plugin_util.escape (',
'                           apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_label_column_no).data_type,',
'                               p_value     => l_column_value_list(l_label_column_no).value_list(l_row_num) ),',
'                           p_region.escape_output );',
'',
'            -- get the value',
'            l_value := l_column_value_list(l_value_column_no).value_list(l_row_num).number_value;',
'',
'            -- get the color if specified',
'            if l_color_column_no is not null then',
'                l_color := apex_plugin_util.escape (',
'                               apex_plugin_util.get_value_as_varchar2 (',
'                                   p_data_type => l_column_value_list(l_color_column_no).data_type,',
'                                   p_value     => l_column_value_list(l_color_column_no).value_list(l_row_num) ),',
'                               true );',
'            end if;',
'',
'            -- get the link target if it does exist',
'            if c_link_target is not null then',
'                l_url := wwv_flow_utilities.prepare_url (',
'                             apex_plugin_util.replace_substitutions (',
'                                 p_value  => c_link_target,',
'                                 p_escape => false ));',
'            end if;',
'',
'            -- write the data to our output buffer',
'            sys.htp.p (',
'                case when l_row_num > 1 then '','' end ||',
'                ''{'' ||',
'                apex_javascript.add_attribute(''label'', l_label) ||',
'                apex_javascript.add_attribute(''color'', l_color) ||',
'                apex_javascript.add_attribute(''url'',   l_url) ||',
'                apex_javascript.add_attribute(''data'',  l_value, false, false ) ||',
'                ''}'' );',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    sys.htp.prn('']'');',
'',
'    return null;',
'end ajax;'))
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT'
,p_sql_min_column_count=>1
,p_sql_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select *',
'  from emp',
' order by sal'))
,p_substitute_attributes=>false
,p_subscribe_plugin_settings=>true
,p_help_text=>'Flot Pie Chart is a pure JavaScript plotting library for jQuery, with a focus on simple usage, attractive looks and interactive features.'
,p_version_identifier=>'5.02'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>25
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669192499386712549)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>510
,p_prompt=>'Minimum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'1.333'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the minimum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Minimum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669192878703712549)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>520
,p_prompt=>'Maximum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'1.5'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the maximum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Maximum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669193237137712549)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Label Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669193627415712549)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Value Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669194096323712549)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>170
,p_prompt=>'Colors Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2669205490086712557)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'SQL'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Select the column from the region SQL Query that holds the color codes for the chart. The color can be set using hex values or as the name of the color.</p>',
'<p>Note: If no column is entered then the color will automatically be calculated.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669194425653712550)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>30
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a chart entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669194857046712550)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>40
,p_prompt=>'Pie Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'STANDARD'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the type of pie chart that should be displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669195272749712551)
,p_plugin_attribute_id=>wwv_flow_api.id(2669194857046712550)
,p_display_sequence=>10
,p_display_value=>'Standard'
,p_return_value=>'STANDARD'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669195739071712551)
,p_plugin_attribute_id=>wwv_flow_api.id(2669194857046712550)
,p_display_sequence=>20
,p_display_value=>'Donut'
,p_return_value=>'DONUT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669196251624712551)
,p_plugin_attribute_id=>wwv_flow_api.id(2669194857046712550)
,p_display_sequence=>30
,p_display_value=>'Tilted'
,p_return_value=>'TILTED'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669196724930712551)
,p_plugin_attribute_id=>wwv_flow_api.id(2669194857046712550)
,p_display_sequence=>40
,p_display_value=>'Rectangular'
,p_return_value=>'RECT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669197226337712551)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>70
,p_prompt=>'Width'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the width of the pie chart you want to create. For example, setting the width to 100 will create a pie chart that is a maximum of 100 pixels wide and 100 pixels in height.</p>',
'<p>Note: If no value is specified, the pie chart will consume all the space of the containing region. </p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669197627568712551)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>60
,p_prompt=>'Display Options'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>true
,p_default_value=>'LABEL:VALUE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Check which attributes are shown on the pie chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669198091053712552)
,p_plugin_attribute_id=>wwv_flow_api.id(2669197627568712551)
,p_display_sequence=>5
,p_display_value=>'Legend'
,p_return_value=>'LEGEND'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669198540917712552)
,p_plugin_attribute_id=>wwv_flow_api.id(2669197627568712551)
,p_display_sequence=>10
,p_display_value=>'Tooltip'
,p_return_value=>'TOOLTIP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669199007333712552)
,p_plugin_attribute_id=>wwv_flow_api.id(2669197627568712551)
,p_display_sequence=>30
,p_display_value=>'Label'
,p_return_value=>'LABEL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669199516763712553)
,p_plugin_attribute_id=>wwv_flow_api.id(2669197627568712551)
,p_display_sequence=>40
,p_display_value=>'Value'
,p_return_value=>'VALUE'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669200003691712553)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Combine Slices'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Select whether slices that are below a given percentage threshold can be combined into a single "other" slice.  For example, if the threshold is set to 10%, then any slice that is below 10% will be grouped into the "other" slice.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669200490354712553)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Combined Slice Threshold'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'10'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2669200003691712553)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_help_text=>'Enter the threshold percentage which determines which slices to group together in an "other" slice.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669200805284712554)
,p_plugin_attribute_id=>wwv_flow_api.id(2669200490354712553)
,p_display_sequence=>10
,p_display_value=>'1%'
,p_return_value=>'1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669201313727712555)
,p_plugin_attribute_id=>wwv_flow_api.id(2669200490354712553)
,p_display_sequence=>20
,p_display_value=>'2%'
,p_return_value=>'2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669201899162712555)
,p_plugin_attribute_id=>wwv_flow_api.id(2669200490354712553)
,p_display_sequence=>30
,p_display_value=>'5%'
,p_return_value=>'5'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669202335312712555)
,p_plugin_attribute_id=>wwv_flow_api.id(2669200490354712553)
,p_display_sequence=>40
,p_display_value=>'10%'
,p_return_value=>'10'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669202818006712555)
,p_plugin_attribute_id=>wwv_flow_api.id(2669200490354712553)
,p_display_sequence=>50
,p_display_value=>'15%'
,p_return_value=>'15'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669203369589712555)
,p_plugin_attribute_id=>wwv_flow_api.id(2669200490354712553)
,p_display_sequence=>60
,p_display_value=>'20%'
,p_return_value=>'20'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669203852271712556)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Combined Slice Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Other'
,p_display_length=>20
,p_max_length=>20
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(2669200003691712553)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Enter the label for the combined slice.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669204268506712556)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Combined Slice Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2669200003691712553)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter a target page to be called when the user clicks the combined slice. </p>',
'<p>Note: Leave the link blank if you do not want to make this clickable. </p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669204661852712556)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_prompt=>'Combined Slice Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the color which should be used for the combined slice. The color can be entered as hex value or as the name of the color.</p>',
'<p>Note: If no color is specified then it will be defaulted to gray.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669205012588712557)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>50
,p_prompt=>'Inner Radius'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2669194857046712550)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'DONUT'
,p_help_text=>'Enter the radius of the hole inside the donut. Numbers between 0 and 1 are treated as percentages and numbers greater than 1 are treated as pixels'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669205490086712557)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'MODERN'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select the color scheme used to render the chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669208319699712559)
,p_plugin_attribute_id=>wwv_flow_api.id(2669205490086712557)
,p_display_sequence=>10
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669205847501712557)
,p_plugin_attribute_id=>wwv_flow_api.id(2669205490086712557)
,p_display_sequence=>20
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669206325806712558)
,p_plugin_attribute_id=>wwv_flow_api.id(2669205490086712557)
,p_display_sequence=>30
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669206831650712558)
,p_plugin_attribute_id=>wwv_flow_api.id(2669205490086712557)
,p_display_sequence=>40
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669207313815712559)
,p_plugin_attribute_id=>wwv_flow_api.id(2669205490086712557)
,p_display_sequence=>50
,p_display_value=>'SQL Column'
,p_return_value=>'SQL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2669207867797712559)
,p_plugin_attribute_id=>wwv_flow_api.id(2669205490086712557)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669208828374712559)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_prompt=>'Custom Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2669205490086712557)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_help_text=>'<p>Enter a list of CSS supported colors separated by colons.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669209251550712560)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>180
,p_prompt=>'Minimum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the minimum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669209669097712560)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>190
,p_prompt=>'Maximum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>'Enter the maximum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2669210071070712560)
,p_plugin_id=>wwv_flow_api.id(4413053519063764625)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>80
,p_prompt=>'Value Format Mask'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Enter the data format mask for the pie slices.'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(90066239307172441)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(90024095775172265)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(90058483932172409)
,p_nav_list_template_options=>'#DEFAULT#'
,p_css_file_urls=>'#IMAGE_PREFIX#pkgapp_ui/css/5.0#MIN#.css'
,p_javascript_file_urls=>'#IMAGE_PREFIX#pkgapp_ui/css/5.0#MIN#.css'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(90066204936172440)
,p_nav_bar_list_template_id=>wwv_flow_api.id(90058349455172407)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(90066239307172441)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code_onload=>'setInterval( ''apex.event.trigger(document,"RefreshRegion");'', 30000);'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.preview-textfield {',
'    margin: auto;',
'    text-align: center;',
'    font-size: 20px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SAROJ'
,p_last_upd_yyyymmddhh24miss=>'20170723182938'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10241414525479129)
,p_plug_name=>'HomeList'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured:t-Cards--displayIcons:t-Cards--3cols:t-Cards--colorize'
,p_plug_template=>wwv_flow_api.id(90032231063172365)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(18201218950512651)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(90053992102172402)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22476981781777626)
,p_plug_name=>'App LOG Analysis - Badge'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(90040252066172385)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from (',
'select ',
'    count(distinct package_name) "Total Test Suites",',
'    sum(total_assertions) "Total Test Cases",',
'    sum(skipped_tests)  "Total Skipped Tests",',
'    sum(error_tests)    "Total Error Tests",',
'    sum(failure_tests)  "Total Failure Tests"',
'from ri_ut_tst_suite_dtl',
'group by package_name',
')    unpivot',
'    (',
'        value',
'        for column_type in',
'            ("Total Failure Tests","Total Error Tests", "Total Test Suites","Total Test Cases","Total Skipped Tests")',
'    )'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'COLUMN_TYPE'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6::'
,p_attribute_05=>'5'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(90068133273172465)
,p_plug_name=>'Test Suites Dashboard'
,p_icon_css_classes=>'app-sample-universal-theme'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90038695844172384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(90067587527172460)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90061549073172419)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(90071348815182819)
,p_plug_name=>'App LOG Analysis'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(90040252066172385)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from (',
'select ',
'    count(distinct package_name) "Total Test Suites",',
'    sum(total_assertions) "Total Test Cases",',
'    sum(skipped_tests)  "Total Skipped Tests",',
'    sum(error_tests)    "Total Error Tests",',
'    sum(failure_tests)  "Total Failure Tests"',
'from ri_ut_tst_suite_dtl',
'group by package_name',
')    unpivot',
'    (',
'        value',
'        for column_type in',
'            ("Total Failure Tests","Total Error Tests", "Total Test Suites","Total Test Cases","Total Skipped Tests")',
'    )'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.D3.PIECHART'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'COLUMN_TYPE'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'400'
,p_attribute_06=>'60'
,p_attribute_07=>'TOOLTIP:PERCENTAGES'
,p_attribute_08=>'SOLAR'
,p_attribute_11=>'DONUT'
,p_attribute_12=>'BOTTOM'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22477733441777633)
,p_name=>'RefreshRegion'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'RefreshRegion'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22477875400777635)
,p_event_id=>wwv_flow_api.id(22477733441777633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'dbms_mview.refresh(''mv_log_data'');',
'end;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22477981553777636)
,p_event_id=>wwv_flow_api.id(22477733441777633)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(22476981781777626)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(90066239307172441)
,p_name=>'Test Suite Runs'
,p_page_mode=>'NORMAL'
,p_step_title=>'Test Suite Runs'
,p_step_sub_title=>'Test Suite Runs'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SAROJ'
,p_last_upd_yyyymmddhh24miss=>'20170723153643'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18410960358495901)
,p_plug_name=>'Test Suite Runs'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90039782612172384)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'    ts.package_name,',
'    tsh.suite_name ,',
'    tsh.total_tests,',
'    tsh.skipped_tests,',
'    tsh.error_tests,',
'    tsh.failure_tests,',
'    tsh.elapsed_time,',
'    tsh.test_run_date,',
'    case when failure_tests >0',
'        then ''fa-times-circle''',
'        when error_tests > (total_tests * 0.1)',
'        then ''fa-warning''',
'        else ''fa-check-circle''',
'    end icon,',
'        case when failure_tests >0',
'        then ''red''',
'        when error_tests > (total_tests * 0.1)',
'        then ''orange''',
'        else ''green''',
'    end colour',
'from ri_ut_tst_suite ts',
'right join ri_ut_tst_suite_hdr tsh',
'on (ts.package_name = tsh.package_name)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18411361893495901)
,p_name=>'Test Suite Runs'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SAROJ'
,p_internal_uid=>18411361893495901
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18411422881495911)
,p_db_column_name=>'PACKAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Package Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18411877985495913)
,p_db_column_name=>'SUITE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Suite Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18412297965495914)
,p_db_column_name=>'TOTAL_TESTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Total Tests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18412677883495914)
,p_db_column_name=>'SKIPPED_TESTS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Skipped Tests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18413092013495927)
,p_db_column_name=>'ERROR_TESTS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Error Tests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18413408993495928)
,p_db_column_name=>'FAILURE_TESTS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Failure Tests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18413887569495928)
,p_db_column_name=>'ELAPSED_TIME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Elapsed Time'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18414245733495928)
,p_db_column_name=>'TEST_RUN_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Test Run Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18402473319306805)
,p_db_column_name=>'ICON'
,p_display_order=>18
,p_column_identifier=>'J'
,p_column_label=>'Icon'
,p_column_html_expression=>'<span style="color:#COLOUR#" class="fa #ICON# fa-2x"></span>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18402597860306806)
,p_db_column_name=>'COLOUR'
,p_display_order=>28
,p_column_identifier=>'K'
,p_column_label=>'Colour'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18414573919495929)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'184146'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PACKAGE_NAME:SUITE_NAME:TOTAL_TESTS:SKIPPED_TESTS:ERROR_TESTS:FAILURE_TESTS:ELAPSED_TIME:TEST_RUN_DATE:ICON:COLOUR'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(90066239307172441)
,p_name=>'Test Suites'
,p_page_mode=>'NORMAL'
,p_step_title=>'Test Suites'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ITSR'
,p_last_upd_yyyymmddhh24miss=>'20170905152724'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15691480086126104)
,p_plug_name=>'Test Suites'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90039782612172384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with latest_suite_hdr as',
'(',
'select ',
'    regexp_substr(package_name,''[^.]*$'') package_name,',
'    max(run_hdr_id) run_hdr_id',
'from ri_ut_tst_suite_hdr',
'group by regexp_substr(package_name,''[^.]*$'')',
')',
'SELECT  ',
'    ts.package_name,',
'    --tsh.package_name,',
'    ts.owner pkg_owner,',
'    ts.active_flag,',
'    tsh.test_run_date last_run_date,',
'    tsh.total_tests,',
'    ''Run'' run_now,',
'        case ',
'        when (tsh.error_tests + tsh.failure_tests)/decode(tsh.total_tests,0,1,total_tests) >= 0.1',
'        then ''Error''',
'        when (tsh.error_tests + tsh.failure_tests)/decode(tsh.total_tests,0,1,total_tests) < 0.1',
'        then ''Warning''',
'        else ''Success''',
'     end last_run_status,',
'    case ',
'        when (tsh.error_tests + tsh.failure_tests)/decode(tsh.total_tests,0,1,total_tests) >= 0.1',
'        then ''t-Button t-Button--danger''',
'        when (tsh.error_tests + tsh.failure_tests)/decode(tsh.total_tests,0,1,total_tests) < 0.1',
'        then ''t-Button t-Button--warning''',
'        else ''t-Button t-Button--success''',
'     end button_class,',
'     tsh.run_hdr_id',
'FROM ri_ut_tst_suite ts',
'    LEFT JOIN latest_suite_hdr lsh',
'        ON (ts.package_name = lsh.package_name)',
'    LEFT JOIN ri_ut_tst_suite_hdr tsh',
'        ON (regexp_substr(tsh.package_name,''[^.]*$'') = regexp_substr(lsh.package_name,''[^.]*$'')',
'        AND tsh.run_hdr_id   = lsh.run_hdr_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(15691797913126104)
,p_name=>'Test Suites'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_ROWID:#PACKAGE_NAME#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="Edit">'
,p_owner=>'SAROJ'
,p_internal_uid=>15691797913126104
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15692259350126107)
,p_db_column_name=>'PACKAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Package Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15693041776126108)
,p_db_column_name=>'ACTIVE_FLAG'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Active Flag'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10240528276479120)
,p_db_column_name=>'LAST_RUN_DATE'
,p_display_order=>24
,p_column_identifier=>'F'
,p_column_label=>'Last run date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10240687150479121)
,p_db_column_name=>'TOTAL_TESTS'
,p_display_order=>34
,p_column_identifier=>'G'
,p_column_label=>'Total tests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10241009476479125)
,p_db_column_name=>'BUTTON_CLASS'
,p_display_order=>74
,p_column_identifier=>'K'
,p_column_label=>'Button class'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10241135473479126)
,p_db_column_name=>'LAST_RUN_STATUS'
,p_display_order=>84
,p_column_identifier=>'L'
,p_column_label=>'Last run status'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_HDR_ID:#RUN_HDR_ID#'
,p_column_linktext=>'#LAST_RUN_STATUS#'
,p_column_link_attr=>'class="#BUTTON_CLASS#"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10241250974479127)
,p_db_column_name=>'RUN_NOW'
,p_display_order=>94
,p_column_identifier=>'M'
,p_column_label=>'Run now'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_TEST_PKG_NAME,P6_USER_NAME:#PACKAGE_NAME#,#PKG_OWNER#'
,p_column_linktext=>'<span class="t-Icon fa fa-toggle-right"></span><span class="visuallyhidden">Edit</span>'
,p_column_link_attr=>'class="t-Button t-Button--hot" title="Click Here To Run"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10241307660479128)
,p_db_column_name=>'RUN_HDR_ID'
,p_display_order=>104
,p_column_identifier=>'N'
,p_column_label=>'Run hdr id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1759491338610427)
,p_db_column_name=>'PKG_OWNER'
,p_display_order=>114
,p_column_identifier=>'S'
,p_column_label=>'Pkg owner'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15695776878136115)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'156958'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PACKAGE_NAME:PKG_OWNER:LAST_RUN_DATE:TOTAL_TESTS:LAST_RUN_STATUS:RUN_NOW:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15694064896126110)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90043608140172388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(90067587527172460)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90061549073172419)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15693476338126108)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(15691480086126104)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(90061150223172419)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Test Suite'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4'
,p_icon_css_classes=>'fa-plus-circle'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(90066239307172441)
,p_name=>'Test Suite'
,p_page_mode=>'NORMAL'
,p_step_title=>'Test Suite'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SAROJ'
,p_last_upd_yyyymmddhh24miss=>'20170722220758'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15684009370126024)
,p_plug_name=>'Test Suite'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90040252066172385)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15694613796126111)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90043608140172388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(90067587527172460)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90061549073172419)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15684515136126025)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(15684009370126024)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(90061083446172419)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P4_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15684797798126025)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15684009370126024)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(90061083446172419)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15684456678126025)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(15684009370126024)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(90061083446172419)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P4_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15684661024126025)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15684009370126024)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(90061083446172419)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P4_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15686637251126040)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15687095572126043)
,p_name=>'P4_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15684009370126024)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90060541745172418)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15687463650126059)
,p_name=>'P4_PACKAGE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15684009370126024)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Package Name'
,p_source=>'PACKAGE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90060541745172418)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15687801555126071)
,p_name=>'P4_OWNER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15684009370126024)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Owner'
,p_source=>'OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90060541745172418)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15688233554126071)
,p_name=>'P4_ACTIVE_FLAG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15684009370126024)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Active Flag'
,p_source=>'ACTIVE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(90060541745172418)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15689933209126072)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RI_UT_TST_SUITE'
,p_attribute_02=>'RI_UT_TST_SUITE'
,p_attribute_03=>'P4_ROWID'
,p_attribute_04=>'PACKAGE_NAME'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15690349952126073)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RI_UT_TST_SUITE'
,p_attribute_02=>'RI_UT_TST_SUITE'
,p_attribute_03=>'P4_ROWID'
,p_attribute_04=>'PACKAGE_NAME'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15690774690126073)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15684661024126025)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(90066239307172441)
,p_name=>'Test Suite Runs'
,p_page_mode=>'NORMAL'
,p_step_title=>'Test Suite Runs'
,p_step_sub_title=>'Test Suite Runs'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SAROJ'
,p_last_upd_yyyymmddhh24miss=>'20170723184126'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10239881474479113)
,p_plug_name=>'Title'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90043608140172388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(90067587527172460)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90061549073172419)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15699303919273550)
,p_plug_name=>'Test Suite Runs'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90039782612172384)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'    ts.package_name,',
'    tsh.suite_name ,',
'    tsh.total_tests,',
'    tsh.skipped_tests,',
'    tsh.error_tests,',
'    tsh.failure_tests,',
'    tsh.elapsed_time,',
'    tsh.test_run_date,',
'    case when failure_tests > 0',
'        then ''fa-times-circle''',
'        when error_tests > (total_tests * 0.1)',
'        then ''fa-check-circle''',
'        else ''fa-check-circle''',
'    end Status,',
'        case when failure_tests > 0',
'        then ''red''',
'        when error_tests > (total_tests * 0.1)',
'        then ''orange''',
'        else ''green''',
'    end colour',
'from ri_ut_tst_suite ts',
'right join ri_ut_tst_suite_hdr tsh',
'on (ts.package_name = tsh.package_name)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(15699402122273550)
,p_name=>'Test Suite Runs'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SAROJ'
,p_internal_uid=>15699402122273550
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15699819142273552)
,p_db_column_name=>'PACKAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Package Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15700208832273552)
,p_db_column_name=>'SUITE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Suite Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15700689302273552)
,p_db_column_name=>'TOTAL_TESTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Total Tests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15701047789273552)
,p_db_column_name=>'SKIPPED_TESTS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Skipped Tests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15701429102273553)
,p_db_column_name=>'ERROR_TESTS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Error Tests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15701849404273553)
,p_db_column_name=>'FAILURE_TESTS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Failure Tests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15702277996273553)
,p_db_column_name=>'ELAPSED_TIME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Elapsed Time'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15702669611273553)
,p_db_column_name=>'TEST_RUN_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Test Run Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18402782186306808)
,p_db_column_name=>'COLOUR'
,p_display_order=>28
,p_column_identifier=>'J'
,p_column_label=>'Colour'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18402858711306809)
,p_db_column_name=>'STATUS'
,p_display_order=>38
,p_column_identifier=>'K'
,p_column_label=>'Status'
,p_column_html_expression=>'<span style="color:#COLOUR#" class="fa #STATUS# fa-2x"></span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15703530073282402)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'157036'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PACKAGE_NAME:SUITE_NAME:TOTAL_TESTS:SKIPPED_TESTS:ERROR_TESTS:FAILURE_TESTS:ELAPSED_TIME:TEST_RUN_DATE:COLOUR:STATUS'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(90066239307172441)
,p_name=>'Test Suite Run Details'
,p_page_mode=>'NORMAL'
,p_step_title=>'Test Suite Run Details'
,p_step_sub_title=>'Test Suite Run Details'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SAROJ'
,p_last_upd_yyyymmddhh24miss=>'20170905131037'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18157174906436288)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90043608140172388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(90067587527172460)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90061549073172419)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18162564590498856)
,p_plug_name=>'Test Run Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90039782612172384)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'    run_hdr_id,',
'    package_name,',
'    test_case_name,',
'    total_assertions,',
'    skipped_tests,',
'    error_tests,',
'    failure_tests,',
'    elapsed_time,',
'    case ',
'        when test_status is null  ',
'            then ''fa-check-circle''',
'        when test_status = ''Disabled'' ',
'            then ''fa-check-circle''',
'        else ''fa-times-circle''',
'    end icon,',
'    case ',
'        when test_status is null ',
'            then ''green''',
'        when test_status = ''Disabled'' ',
'            then ''grey''',
'        else ''red''',
'    end colour',
'FROM RI_UT_TST_SUITE_DTL',
'WHERE run_hdr_id = nvl(:p6_hdr_id,run_hdr_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18162600773498856)
,p_name=>'Test Run Details'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'SAROJ'
,p_internal_uid=>18162600773498856
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18162972418498857)
,p_db_column_name=>'RUN_HDR_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Run ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18163367488498869)
,p_db_column_name=>'PACKAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Package Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18163751557498874)
,p_db_column_name=>'TEST_CASE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Test Case Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18164164819498874)
,p_db_column_name=>'TOTAL_ASSERTIONS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Total Assertions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18164596353498874)
,p_db_column_name=>'SKIPPED_TESTS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Skipped Tests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18164967869498874)
,p_db_column_name=>'ERROR_TESTS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Tests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18165305533498874)
,p_db_column_name=>'FAILURE_TESTS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Failure Tests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18165751600498875)
,p_db_column_name=>'ELAPSED_TIME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Elapsed Time'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18402906056306810)
,p_db_column_name=>'ICON'
,p_display_order=>18
,p_column_identifier=>'K'
,p_column_label=>'Status'
,p_column_html_expression=>'<span style="color:#COLOUR#" class="fa #ICON# fa-2x"></span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18403072191306811)
,p_db_column_name=>'COLOUR'
,p_display_order=>28
,p_column_identifier=>'L'
,p_column_label=>'Colour'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18166584364499872)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'181666'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'RUN_HDR_ID:PACKAGE_NAME:TEST_CASE_NAME:TOTAL_ASSERTIONS:SKIPPED_TESTS:ERROR_TESTS:FAILURE_TESTS:ELAPSED_TIME:ICON:COLOUR'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1759172162610424)
,p_name=>'P6_USER_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18162564590498856)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10240183531479116)
,p_name=>'P6_HDR_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18162564590498856)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10240332075479118)
,p_name=>'P6_TEST_PKG_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18162564590498856)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10240231616479117)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run UT Test'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'    :P6_HDR_ID := ri_ut_run( ',
'        i_package_name => :P6_TEST_PKG_NAME,',
'        i_user_name => :P6_USER_NAME);',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P6_TEST_PKG_NAME'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
end;
/
prompt --application/pages/page_00042
begin
wwv_flow_api.create_page(
 p_id=>42
,p_user_interface_id=>wwv_flow_api.id(90066239307172441)
,p_name=>'Help'
,p_page_mode=>'NORMAL'
,p_step_title=>'help'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SAROJ'
,p_last_upd_yyyymmddhh24miss=>'20170702165144'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22478639799777643)
,p_plug_name=>'<font color="grey">Dashboard</font>'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(90036574481172380)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Dashboard gives a visual presentation of number of test suites and their run details',
''))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25901071781453936)
,p_plug_name=>'Help'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90043608140172388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_menu_id=>wwv_flow_api.id(90067587527172460)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(90061549073172419)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25901787530460195)
,p_plug_name=>'<font color="grey">Test Suites</font>'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(90036574481172380)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Display list of all utplsql test packages registered. Also allows to register a new test package and modify existing packages'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25901993348460197)
,p_plug_name=>'<font color="grey">Test Suite Runs</font>'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent3:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(90036574481172380)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Displays run statistics of all test packages'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25902041204460198)
,p_plug_name=>'<font color="grey">Test Suite Run details</font>'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent4:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(90036574481172380)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Displays details of individual test cases under for the selected test suite/all test suites'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(90066239307172441)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'UTUI Login'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(90026127733172337)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'SAROJ'
,p_last_upd_yyyymmddhh24miss=>'20170702145255'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(90066740349172452)
,p_plug_name=>'<b>UTUI</b>'
,p_icon_css_classes=>'app-sample-universal-theme'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90040073614172385)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22478495222777641)
,p_plug_name=>'LOGIN_MSG'
,p_parent_plug_id=>wwv_flow_api.id(90066740349172452)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(90032231063172365)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p><center><small> <i>Authenticated by Active Directory, use your windows login credentials<i></small></center></p>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(90067130946172455)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(90066740349172452)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(90061083446172419)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90066872291172455)
,p_name=>'P101_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(90066740349172452)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(90060450137172413)
,p_item_css_classes=>'icon-login-username'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90067031450172455)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(90066740349172452)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(90060450137172413)
,p_item_css_classes=>'icon-login-password'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90067305969172460)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90067172049172457)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90067497091172460)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90067377235172460)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00102
begin
wwv_flow_api.create_page(
 p_id=>102
,p_user_interface_id=>wwv_flow_api.id(90066239307172441)
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'SAROJ'
,p_last_upd_yyyymmddhh24miss=>'20170610202941'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22790682362969330)
,p_plug_name=>'Feedback'
,p_plug_template=>wwv_flow_api.id(90044056832172388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22798117506969373)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22790682362969330)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_id=>wwv_flow_api.id(90061083446172419)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22798473935969380)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22790682362969330)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(90061083446172419)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22791060181969346)
,p_name=>'P102_APPLICATION_ID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(22790682362969330)
,p_prompt=>'Application:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select application_id||''. ''||application_name d, application_id v from apex_applications where application_id = :P102_APPLICATION_ID'
,p_cSize=>60
,p_tag_attributes=>'class="fielddatabold"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90060541745172418)
,p_help_text=>'Identifies Application.'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22792000893969364)
,p_name=>'P102_PAGE_ID'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(22790682362969330)
,p_prompt=>'Page:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'select page_id||''. ''||page_name d, page_id v from apex_application_pages where page_id = :P102_PAGE_ID and application_id = :P102_APPLICATION_ID'
,p_cSize=>60
,p_tag_attributes=>'class="fielddatabold"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90060541745172418)
,p_help_text=>'Identifies page within application.'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22792752067969364)
,p_name=>'P102_FEEDBACK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22790682362969330)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(90060541745172418)
,p_help_text=>'Enter your feedback and press the submit feedback button.'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22793793447969365)
,p_name=>'P102_FEEDBACK_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22790682362969330)
,p_prompt=>'Feedback Type'
,p_source=>'1'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select the_name, id from APEX_FEEDBACK_TYPES order by id'
,p_cSize=>20
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(90060541745172418)
,p_help_text=>'Please identify the type of feedback you are providing.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22794595296969371)
,p_name=>'P102_ATTRIBUTE1'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22790682362969330)
,p_prompt=>'Attribute 1'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(90060541745172418)
,p_help_text=>'Please supply this information to be logged as feedback.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22795528807969372)
,p_name=>'P102_ATTRIBUTE2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22790682362969330)
,p_prompt=>'Attribute 2'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(90060541745172418)
,p_help_text=>'Please supply this information to be logged as feedback.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22796389208969372)
,p_name=>'P102_ATTRIBUTE3'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(22790682362969330)
,p_prompt=>'Attribute 3'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(90060541745172418)
,p_help_text=>'Please supply this information to be logged as feedback.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22797287448969372)
,p_name=>'P102_ATTRIBUTE4'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(22790682362969330)
,p_prompt=>'Attribute 4'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(90060541745172418)
,p_help_text=>'Please supply this information to be logged as feedback.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(22799931626969401)
,p_validation_name=>'P102_FEEDBACK'
,p_validation_sequence=>10
,p_validation=>'P102_FEEDBACK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(22798117506969373)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(22792752067969364)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22798915296969382)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22798473935969380)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22799342510969393)
,p_event_id=>wwv_flow_api.id(22798915296969382)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22800330246969403)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Feedback'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_util.submit_feedback (',
'    p_comment         => :P102_FEEDBACK,',
'    p_type            => :P102_FEEDBACK_TYPE,',
'    p_application_id  => :P102_APPLICATION_ID,',
'    p_page_id         => :P102_PAGE_ID,',
'    p_email           => null,',
'    p_attribute_01   => :P102_ATTRIBUTE1,',
'    p_label_01       => null,',
'    p_attribute_02   => :P102_ATTRIBUTE2,',
'    p_label_02       => null,',
'    p_attribute_03   => :P102_ATTRIBUTE3,',
'    p_label_03       => null,',
'    p_attribute_04   => :P102_ATTRIBUTE4,',
'    p_label_04       => null);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22798117506969373)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22800719304969408)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Window'
,p_process_sql_clob=>'CLOSE_WINDOW'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
