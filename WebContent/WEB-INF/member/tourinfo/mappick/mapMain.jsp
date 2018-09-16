<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<div class="main section-color-primary">
    <div class="container">
        <div class="row content-flex">
            <div class="col-md-6 content-left side-map-container fullscreen-map-md">
                
<div class="nexos_sw_win_wrapper">
<div class="ci sw_widget sw_wrap">

<div id="sw_map_results" data-zoom_index="10" data-num_listings="50" ></div>

</div>
</div>            </div>
            <div class="col-md-6 content-right fullscreen-inner-md">
                <div class="nexos_sw_win_wrapper">
<div class="ci sw_widget sw_wrap">

<section class="search-form color-primary header-search-form widget-with-control">
    <h2 class="hidden">Search</h2>  
    <div class="">
        <form class="form-horisontal form-primary sw_search_primary">
                        
            <div class=" col-md-6 ">
    <div class="form-group field_search_78" style="">
        <input id="search_78" name="search_78" type="text" class="form-control" placeholder="Enter Your Keywords..." value="" />
        </div>
</div>
<div class=" col-md-6 ">
    <div class="select-item form-group field_search_4" style="">
    <select name="search_4"  class="form-control selectpicker" title="Purpose (Any)" multiple="multiple">
<option value="For Sale">For Sale</option>
<option value="For Rent">For Rent</option>
</select>    </div>
</div>


<div class="winter_dropdown_tree_style form-group group_category_id search_field hide_side col-md-6" style="">
    <script>

var dp_fields = {"1":[""],"2":[""],"3":["15","22","21","20","19","16","27","26","25","24","23"],"4":[""],"5":["15","22","21","20","19","16","27"],"6":["15","22","21","20","19","16","27"],"7":["15","22","21","20","19","16","27"]}

jQuery(document).ready(function($) {
    $('#wintreeelem_0').winterTreefield({
        ajax_url: 'https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php',
        ajax_param: { 
                      "page": 'frontendajax_treefieldid',
                      "action": 'ci_action',
                      "table": 'treefield_m',
                      "field_id": '1',
                      "empty_value": 'All Categories'
                    },
        attribute_id: 'idtreefield',
        language_id: '1',
        attribute_value: 'value',
        skip_id: '',
        empty_value: ' - ',
        text_search: 'Search term',
        text_no_results: 'No results found',
        callback_selected: function(key) {
            $('#wintreeelem_0').trigger("change");

            $('*[class^="field_search_"]').show();

            if(dp_fields[key])
            {
                $.each( dp_fields[key], function( key, value ) {
                    
                    // Hide all dependent fields
                    $('.field_search_'+value).hide();
                    
                                        $('.field_search_'+value).find('input').val(null);
                    $('.field_search_'+value).find('input:checked').removeAttr('checked');
                    $('.field_search_'+value).find($('option')).attr('selected',false)
                    //tinymce.execCommand( 'mceAddEditor', false, 'input_'+value+'_1' );
                                            
                });
            }
        }
    });
});
</script>
        <input name="search_category" value="" type="text" id="wintreeelem_0" readonly/></div><!-- /.form-group -->


<div class="winter_dropdown_tree_style form-group group_location_id search_field hide_side col-md-6" style="">
    <script>

var dp_fields = []

jQuery(document).ready(function($) {
    $('#wintreeelem_1').winterTreefield({
        ajax_url: 'https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php',
        ajax_param: { 
                      "page": 'frontendajax_treefieldid',
                      "action": 'ci_action',
                      "table": 'treefield_m',
                      "field_id": '2',
                      "empty_value": 'All Locations'
                    },
        attribute_id: 'idtreefield',
        language_id: '1',
        attribute_value: 'value',
        skip_id: '',
        empty_value: ' - ',
        text_search: 'Search term',
        text_no_results: 'No results found',
        callback_selected: function(key) {
            $('#wintreeelem_1').trigger("change");

            $('*[class^="field_search_"]').show();

            if(dp_fields[key])
            {
                $.each( dp_fields[key], function( key, value ) {
                    
                    // Hide all dependent fields
                    $('.field_search_'+value).hide();
                    
                                        $('.field_search_'+value).find('input').val(null);
                    $('.field_search_'+value).find('input:checked').removeAttr('checked');
                    $('.field_search_'+value).find($('option')).attr('selected',false)
                    //tinymce.execCommand( 'mceAddEditor', false, 'input_'+value+'_1' );
                                            
                });
            }
        }
    });
});
</script>
        <input name="search_location" value="" type="text" id="wintreeelem_1" readonly/></div><!-- /.form-group -->


<div class=" col-md-6 ">
    <div class="form-group" style="">
        <input id="search_where" name="search_where" value="" type="text" class="form-control" placeholder="Where?" />
    </div>
</div>

<div class=" col-md-6 ">
    <div class="form-group " style="">
        <input id="search_what" name="search_what" type="text" class="form-control" placeholder="What?" value="" />
    </div>
</div>

<div class=" show_side col-md-6">
    <div class="form-group">
        <div class="scale-range" id="nonlinear-price">
            <div class="hidden config-range"
              data-min="0"
              data-max="92000"
              data-sufix=""
              data-prefix="$"
              data-infinity="false"
              data-predifinedMin=""
              data-predifinedMax=""
            >
            </div>
            <div class="scale-range-value">
                <span class="scale-range-label">Price Range</span>
                from                <span class="nonlinear-min"></span>
                to                <span class="nonlinear-max"></span>
            </div>
            <div class="nonlinear"></div>
            <input id="search_36_from" name="search_36_from" type="text" class="value-min hidden" value="" />
            <input id="search_36_to" name="search_36_to" type="text" class="value-max hidden" value="" />
        </div>
    </div>
</div>


<div class=" col-md-6  search-btn-box">
    <div class="form-group" id="search-btn">
        <button type="submit" class="btn btn-search sw-search-start">Search Property<i class="fa fa-spinner fa-spin fa-ajax-indicator" style="display: none;"></i></button>
    </div>
</div>

<div style="clear:both"></div>
<div class="clearfix" id='form-addittional' style="display: none;"><div class="hide_side  right_fullwidth col-md-6">
            <div class="form-group field_search_36 select-item" style="">
        <select name="search_36_to" class="form-control selectpicker">
<option value="" selected="selected">TO  ($)</option>
<option value="10000">$ 10000 </option>
<option value="20000">$ 20000 </option>
<option value="30000">$ 30000 </option>
<option value="40000">$ 40000 </option>
<option value="50000">$ 50000 </option>
<option value="100000">$ 100000 </option>
</select>        </div>
</div>
<div class=" col-md-6 ">
    <div class="form-group field_search_5" style="">
        <input id="search_5" name="search_5" type="text" class="form-control" placeholder="Living area (ft2)" value="" />
        </div>
</div><div class=" col-md-6  checkbox-md">
<div class="checkbox-box-main clearfix">
    <label class="checkbox-styles checkbox-inline" for="search_29">
        <input rel="Internet" name="search_29" id="search_29" type="checkbox" value="1" /> 
        <span class="checkmark"></span>
            Internet    </label>
</div>
</div><div class=" col-md-6  checkbox-md">
<div class="checkbox-box-main clearfix">
    <label class="checkbox-styles checkbox-inline" for="search_33">
        <input rel="Pool" name="search_33" id="search_33" type="checkbox" value="1" /> 
        <span class="checkmark"></span>
            Pool    </label>
</div>
</div><div class=" col-md-6  checkbox-md">
<div class="checkbox-box-main clearfix">
    <label class="checkbox-styles checkbox-inline" for="search_30">
        <input rel="Elevator" name="search_30" id="search_30" type="checkbox" value="1" /> 
        <span class="checkmark"></span>
            Elevator    </label>
</div>
</div><div class=" col-md-6  checkbox-md">
<div class="checkbox-box-main clearfix">
    <label class="checkbox-styles checkbox-inline" for="search_31">
        <input rel="Microwave" name="search_31" id="search_31" type="checkbox" value="1" /> 
        <span class="checkmark"></span>
            Microwave    </label>
</div>
</div>            
                        </div>
                    </form>
    </div>
    <div style="clear: both;"></div>
</section>


</div>
</div>
                                        
<article id="post-23" class="post-23 page type-page status-publish hentry">
    <h2 class="title hidden">
        Results     </h2> 
    <div class="">
        <div class="">
            <div class="">
                <!-- Article content -->
                <div class="entry-content">
                    <div class="nexos_sw_win_wrapper">
<div class="ci sw_widget sw_wrap">

<div id="results" class="properties-rows">

<span id="results_top"></span>


<div class="h-side top-pad h-side-slim clearfix">
    <div class="pull-left">
        <h2 class="h-side-title page-title text-color-primary"><span class="h-side-additional">15</span>Results</h2> 
    </div>
    <div class="pull-right">
        <div class="properties-filter">
            <div class="form-group">
                <select name="search_order" id="search_order" class="form-control selectpicker select-small" >
<option value="idlisting ASC">By publish date ASC</option>
<option value="idlisting DESC" selected="selected">By publish date DESC</option>
<option value="field_36_int ASC, idlisting DESC">By price ASC</option>
<option value="field_36_int DESC, idlisting DESC">By price DESC</option>
</select>            </div>
            <div class="grid-type pull-right sw-order-view">
                <a href="#" class="list view-type " data-ref="list"><i class="fa fa-th-list"></i></a>
                <a href="#" class="grid view-type active" data-ref="grid"><i class="fa fa-th-large"></i></a>
            </div>
        </div>
    </div>
</div> <!-- /. content-header --> 



<div class="properties">
<div class="row sw-listing-results">
        <div class="col-md-6 col-sm-6">
        <div class="property-card card complete_box sw_animatable sw_anim_fadeslow">
            <div class="property-card-header image-box">
                <img src="//listing-themes.com/nexos-wp/wp-content/uploads/sw_win/files/strict_cache/520x33015ialicante-mediterranean-homes-475777-unsplash.jpg" alt="..." class="">
                
                                <div class="budget is_favorite">
                    <a href="#" class="add-favorites-action "  data-loginpopup="true"  data-id="15" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart-o"></i></a>
                    <a href="#" class="remove-favorites-action hidden" data-id="15" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart"></i></a>
                    <i class="fa fa-spinner fa-spin fa-custom-ajax-indicator"></i>
                </div>
                                
                
                <a href="https://listing-themes.com/nexos-wp/listing-preview/lux-house" class="property-card-hover">
                    <span>View <i class="fa fa-angle-double-right"></i></span>
                </a>
                <div class="property-card-tags">
                    <span class="label label-default label-tag-warning color-for-sale">For Sale</span>
                </div>
            </div>
            <div class="property-card-box card-box card-block">
                <h3 class="property-card-title"><a href="https://listing-themes.com/nexos-wp/listing-preview/lux-house">Lux House</a></h3>
                <div class="property-card-descr">Lux House from Daruvar, Ulica Nikole Tesle with a beautiful courtyard and pool, free&#8230;</div>
                <div class="property-preview-footer clearfix">
                    <div class="property-preview-f-right">
                        <a href="https://listing-themes.com/nexos-wp/listing-preview/lux-house" class="btn btn-details text-uppercase">View details</a>
                    </div>
                    <div class="property-preview-f-left text-color-primary">
                        <span class="property-card-value" style=""><i class="fa fa-check"></i>Parking</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Elevator</span>                    </div>
                </div>
                <div class="property-preview-footer-1">
                    <span class="property-option">                                           
                                                $41000                                            </span>
                </div>
            </div>
            <a href="https://listing-themes.com/nexos-wp/listing-preview/lux-house" class="complete_box_link"></a>
        </div>
    </div>

        <div class="col-md-6 col-sm-6">
        <div class="property-card card complete_box sw_animatable sw_anim_fadeslow">
            <div class="property-card-header image-box">
                <img src="//listing-themes.com/nexos-wp/wp-content/uploads/sw_win/files/strict_cache/520x33014house-lake-mountains-262405.jpg" alt="..." class="">
                                <div class="budget is_featured">Featured</div>
                
                                <div class="budget is_favorite">
                    <a href="#" class="add-favorites-action "  data-loginpopup="true"  data-id="14" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart-o"></i></a>
                    <a href="#" class="remove-favorites-action hidden" data-id="14" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart"></i></a>
                    <i class="fa fa-spinner fa-spin fa-custom-ajax-indicator"></i>
                </div>
                                
                
                <a href="https://listing-themes.com/nexos-wp/listing-preview/spa-restaurant" class="property-card-hover">
                    <span>View <i class="fa fa-angle-double-right"></i></span>
                </a>
                <div class="property-card-tags">
                    <span class="label label-default label-tag-warning color-for-rent">For Rent</span>
                </div>
            </div>
            <div class="property-card-box card-box card-block">
                <h3 class="property-card-title"><a href="https://listing-themes.com/nexos-wp/listing-preview/spa-restaurant">Spa restaurant</a></h3>
                <div class="property-card-descr">Spa restaurant from Virovitica, Becka ulica in the peaceful neighborhood, every room&#8230;</div>
                <div class="property-preview-footer clearfix">
                    <div class="property-preview-f-right">
                        <a href="https://listing-themes.com/nexos-wp/listing-preview/spa-restaurant" class="btn btn-details text-uppercase">View details</a>
                    </div>
                    <div class="property-preview-f-left text-color-primary">
                        <span class="property-card-value" style=""><i class="fa fa-check"></i>Air conditioning</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Cable TV</span>                    </div>
                </div>
                <div class="property-preview-footer-1">
                    <span class="property-option">                                           
                                                $69000                                            </span>
                </div>
            </div>
            <a href="https://listing-themes.com/nexos-wp/listing-preview/spa-restaurant" class="complete_box_link"></a>
        </div>
    </div>

<div class="clear hidden-sm"></div><br class="clear visible-sm" />        <div class="col-md-6 col-sm-6">
        <div class="property-card card complete_box sw_animatable sw_anim_fadeslow">
            <div class="property-card-header image-box">
                <img src="//listing-themes.com/nexos-wp/wp-content/uploads/sw_win/files/strict_cache/520x33013estate-points.jpg" alt="..." class="">
                
                                <div class="budget is_favorite">
                    <a href="#" class="add-favorites-action "  data-loginpopup="true"  data-id="13" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart-o"></i></a>
                    <a href="#" class="remove-favorites-action hidden" data-id="13" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart"></i></a>
                    <i class="fa fa-spinner fa-spin fa-custom-ajax-indicator"></i>
                </div>
                                
                
                <a href="https://listing-themes.com/nexos-wp/listing-preview/premium-hotel" class="property-card-hover">
                    <span>View <i class="fa fa-angle-double-right"></i></span>
                </a>
                <div class="property-card-tags">
                    <span class="label label-default label-tag-warning color-for-rent">For Rent</span>
                </div>
            </div>
            <div class="property-card-box card-box card-block">
                <h3 class="property-card-title"><a href="https://listing-themes.com/nexos-wp/listing-preview/premium-hotel">Premium Hotel</a></h3>
                <div class="property-card-descr">Premium Hotel from Croatia, Ivanec, Jezerski put with a beautiful courtyard and pool,&#8230;</div>
                <div class="property-preview-footer clearfix">
                    <div class="property-preview-f-right">
                        <a href="https://listing-themes.com/nexos-wp/listing-preview/premium-hotel" class="btn btn-details text-uppercase">View details</a>
                    </div>
                    <div class="property-preview-f-left text-color-primary">
                        <span class="property-card-value" style=""><i class="fa fa-check"></i>Internet</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Parking</span>                    </div>
                </div>
                <div class="property-preview-footer-1">
                    <span class="property-option">                                           
                                                $91000                                            </span>
                </div>
            </div>
            <a href="https://listing-themes.com/nexos-wp/listing-preview/premium-hotel" class="complete_box_link"></a>
        </div>
    </div>

        <div class="col-md-6 col-sm-6">
        <div class="property-card card complete_box sw_animatable sw_anim_fadeslow">
            <div class="property-card-header image-box">
                <img src="//listing-themes.com/nexos-wp/wp-content/uploads/sw_win/files/strict_cache/520x33012eduard-militaru-129396-unsplash.jpg" alt="..." class="">
                
                                <div class="budget is_favorite">
                    <a href="#" class="add-favorites-action "  data-loginpopup="true"  data-id="12" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart-o"></i></a>
                    <a href="#" class="remove-favorites-action hidden" data-id="12" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart"></i></a>
                    <i class="fa fa-spinner fa-spin fa-custom-ajax-indicator"></i>
                </div>
                                
                
                <a href="https://listing-themes.com/nexos-wp/listing-preview/lux-villa" class="property-card-hover">
                    <span>View <i class="fa fa-angle-double-right"></i></span>
                </a>
                <div class="property-card-tags">
                    <span class="label label-default label-tag-warning color-for-sale">For Sale</span>
                </div>
            </div>
            <div class="property-card-box card-box card-block">
                <h3 class="property-card-title"><a href="https://listing-themes.com/nexos-wp/listing-preview/lux-villa">Lux Villa</a></h3>
                <div class="property-card-descr">Lux Villa from Croatia, Bjelovar, Ulica Nikole Šopa with beautiful garden and grill,&#8230;</div>
                <div class="property-preview-footer clearfix">
                    <div class="property-preview-f-right">
                        <a href="https://listing-themes.com/nexos-wp/listing-preview/lux-villa" class="btn btn-details text-uppercase">View details</a>
                    </div>
                    <div class="property-preview-f-left text-color-primary">
                        <span class="property-card-value" style=""><i class="fa fa-check"></i>Internet</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Balcony</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Elevator</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Cable TV</span>                    </div>
                </div>
                <div class="property-preview-footer-1">
                    <span class="property-option">                                           
                                                $9000                                            </span>
                </div>
            </div>
            <a href="https://listing-themes.com/nexos-wp/listing-preview/lux-villa" class="complete_box_link"></a>
        </div>
    </div>

<div class="clear hidden-sm"></div><br class="clear visible-sm" />        <div class="col-md-6 col-sm-6">
        <div class="property-card card complete_box sw_animatable sw_anim_fadeslow">
            <div class="property-card-header image-box">
                <img src="//listing-themes.com/nexos-wp/wp-content/uploads/sw_win/files/strict_cache/520x33011terrah-holly-16329-unsplash.jpg" alt="..." class="">
                                <div class="budget is_featured">Featured</div>
                
                                <div class="budget is_favorite">
                    <a href="#" class="add-favorites-action "  data-loginpopup="true"  data-id="11" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart-o"></i></a>
                    <a href="#" class="remove-favorites-action hidden" data-id="11" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart"></i></a>
                    <i class="fa fa-spinner fa-spin fa-custom-ajax-indicator"></i>
                </div>
                                
                
                <a href="https://listing-themes.com/nexos-wp/listing-preview/sky-apartment" class="property-card-hover">
                    <span>View <i class="fa fa-angle-double-right"></i></span>
                </a>
                <div class="property-card-tags">
                    <span class="label label-default label-tag-warning color-for-sale">For Sale</span>
                </div>
            </div>
            <div class="property-card-box card-box card-block">
                <h3 class="property-card-title"><a href="https://listing-themes.com/nexos-wp/listing-preview/sky-apartment">Sky Apartment</a></h3>
                <div class="property-card-descr">Sky Apartment from Croatia, Koprivnica, Vinica with beautiful garden and grill, guests&#8230;</div>
                <div class="property-preview-footer clearfix">
                    <div class="property-preview-f-right">
                        <a href="https://listing-themes.com/nexos-wp/listing-preview/sky-apartment" class="btn btn-details text-uppercase">View details</a>
                    </div>
                    <div class="property-preview-f-left text-color-primary">
                        <span class="property-card-value" style=""><i class="fa fa-check"></i>Air conditioning</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Internet</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Parking</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Balcony</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Cable TV</span>                    </div>
                </div>
                <div class="property-preview-footer-1">
                    <span class="property-option">                                           
                                                $22000                                            </span>
                </div>
            </div>
            <a href="https://listing-themes.com/nexos-wp/listing-preview/sky-apartment" class="complete_box_link"></a>
        </div>
    </div>

        <div class="col-md-6 col-sm-6">
        <div class="property-card card complete_box sw_animatable sw_anim_fadeslow">
            <div class="property-card-header image-box">
                <img src="//listing-themes.com/nexos-wp/wp-content/uploads/sw_win/files/strict_cache/520x33010backyard-house-lights-32870.jpg" alt="..." class="">
                
                                <div class="budget is_favorite">
                    <a href="#" class="add-favorites-action "  data-loginpopup="true"  data-id="10" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart-o"></i></a>
                    <a href="#" class="remove-favorites-action hidden" data-id="10" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart"></i></a>
                    <i class="fa fa-spinner fa-spin fa-custom-ajax-indicator"></i>
                </div>
                                
                
                <a href="https://listing-themes.com/nexos-wp/listing-preview/yellow-wood" class="property-card-hover">
                    <span>View <i class="fa fa-angle-double-right"></i></span>
                </a>
                <div class="property-card-tags">
                    <span class="label label-default label-tag-warning color-for-sale">For Sale</span>
                </div>
            </div>
            <div class="property-card-box card-box card-block">
                <h3 class="property-card-title"><a href="https://listing-themes.com/nexos-wp/listing-preview/yellow-wood">Yellow Wood</a></h3>
                <div class="property-card-descr">Yellow Wood from Croatia, Osijek, Drinska ulica with beautiful garden and grill, guests&#8230;</div>
                <div class="property-preview-footer clearfix">
                    <div class="property-preview-f-right">
                        <a href="https://listing-themes.com/nexos-wp/listing-preview/yellow-wood" class="btn btn-details text-uppercase">View details</a>
                    </div>
                    <div class="property-preview-f-left text-color-primary">
                        <span class="property-card-value" style=""><i class="fa fa-check"></i>Internet</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Balcony</span>                    </div>
                </div>
                <div class="property-preview-footer-1">
                    <span class="property-option">                                           
                                                $48000                                            </span>
                </div>
            </div>
            <a href="https://listing-themes.com/nexos-wp/listing-preview/yellow-wood" class="complete_box_link"></a>
        </div>
    </div>

<div class="clear hidden-sm"></div><br class="clear visible-sm" />        <div class="col-md-6 col-sm-6">
        <div class="property-card card complete_box sw_animatable sw_anim_fadeslow">
            <div class="property-card-header image-box">
                <img src="//listing-themes.com/nexos-wp/wp-content/uploads/sw_win/files/strict_cache/520x3309bernadette-gatsby-11348-unsplash.jpg" alt="..." class="">
                
                                <div class="budget is_favorite">
                    <a href="#" class="add-favorites-action "  data-loginpopup="true"  data-id="9" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart-o"></i></a>
                    <a href="#" class="remove-favorites-action hidden" data-id="9" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart"></i></a>
                    <i class="fa fa-spinner fa-spin fa-custom-ajax-indicator"></i>
                </div>
                                
                
                <a href="https://listing-themes.com/nexos-wp/listing-preview/round-towers" class="property-card-hover">
                    <span>View <i class="fa fa-angle-double-right"></i></span>
                </a>
                <div class="property-card-tags">
                    <span class="label label-default label-tag-warning color-for-sale">For Sale</span>
                </div>
            </div>
            <div class="property-card-box card-box card-block">
                <h3 class="property-card-title"><a href="https://listing-themes.com/nexos-wp/listing-preview/round-towers">Round towers</a></h3>
                <div class="property-card-descr">Round towers from Croatia, Rijeka, Šibenska ulica with beautiful garden and grill, guests&#8230;</div>
                <div class="property-preview-footer clearfix">
                    <div class="property-preview-f-right">
                        <a href="https://listing-themes.com/nexos-wp/listing-preview/round-towers" class="btn btn-details text-uppercase">View details</a>
                    </div>
                    <div class="property-preview-f-left text-color-primary">
                        <span class="property-card-value" style=""><i class="fa fa-check"></i>Cable TV</span>                    </div>
                </div>
                <div class="property-preview-footer-1">
                    <span class="property-option">                                           
                                                $79000                                            </span>
                </div>
            </div>
            <a href="https://listing-themes.com/nexos-wp/listing-preview/round-towers" class="complete_box_link"></a>
        </div>
    </div>

        <div class="col-md-6 col-sm-6">
        <div class="property-card card complete_box sw_animatable sw_anim_fadeslow">
            <div class="property-card-header image-box">
                <img src="//listing-themes.com/nexos-wp/wp-content/uploads/sw_win/files/strict_cache/520x3308estate-points.jpg" alt="..." class="">
                
                                <div class="budget is_favorite">
                    <a href="#" class="add-favorites-action "  data-loginpopup="true"  data-id="8" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart-o"></i></a>
                    <a href="#" class="remove-favorites-action hidden" data-id="8" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart"></i></a>
                    <i class="fa fa-spinner fa-spin fa-custom-ajax-indicator"></i>
                </div>
                                
                
                <a href="https://listing-themes.com/nexos-wp/listing-preview/fear-wood" class="property-card-hover">
                    <span>View <i class="fa fa-angle-double-right"></i></span>
                </a>
                <div class="property-card-tags">
                    <span class="label label-default label-tag-warning color-for-rent">For Rent</span>
                </div>
            </div>
            <div class="property-card-box card-box card-block">
                <h3 class="property-card-title"><a href="https://listing-themes.com/nexos-wp/listing-preview/fear-wood">Fear Wood</a></h3>
                <div class="property-card-descr">Fear Wood from Croatia, Karlovac, Bohinjska ulica with a beautiful courtyard and pool,&#8230;</div>
                <div class="property-preview-footer clearfix">
                    <div class="property-preview-f-right">
                        <a href="https://listing-themes.com/nexos-wp/listing-preview/fear-wood" class="btn btn-details text-uppercase">View details</a>
                    </div>
                    <div class="property-preview-f-left text-color-primary">
                        <span class="property-card-value" style=""><i class="fa fa-check"></i>Parking</span>                    </div>
                </div>
                <div class="property-preview-footer-1">
                    <span class="property-option">                                           
                                                $88000                                            </span>
                </div>
            </div>
            <a href="https://listing-themes.com/nexos-wp/listing-preview/fear-wood" class="complete_box_link"></a>
        </div>
    </div>

<div class="clear hidden-sm"></div><br class="clear visible-sm" />        <div class="col-md-6 col-sm-6">
        <div class="property-card card complete_box sw_animatable sw_anim_fadeslow">
            <div class="property-card-header image-box">
                <img src="//listing-themes.com/nexos-wp/wp-content/uploads/sw_win/files/strict_cache/520x3307justin-schuler-253611-unsplash.jpg" alt="..." class="">
                
                                <div class="budget is_favorite">
                    <a href="#" class="add-favorites-action "  data-loginpopup="true"  data-id="7" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart-o"></i></a>
                    <a href="#" class="remove-favorites-action hidden" data-id="7" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart"></i></a>
                    <i class="fa fa-spinner fa-spin fa-custom-ajax-indicator"></i>
                </div>
                                
                
                <a href="https://listing-themes.com/nexos-wp/listing-preview/classic-americano" class="property-card-hover">
                    <span>View <i class="fa fa-angle-double-right"></i></span>
                </a>
                <div class="property-card-tags">
                    <span class="label label-default label-tag-warning color-for-sale">For Sale</span>
                </div>
            </div>
            <div class="property-card-box card-box card-block">
                <h3 class="property-card-title"><a href="https://listing-themes.com/nexos-wp/listing-preview/classic-americano">Classic Americano</a></h3>
                <div class="property-card-descr">Classic Americano from Croatia, Varazdin, Cehovska ulica in the peaceful neighborhood,&#8230;</div>
                <div class="property-preview-footer clearfix">
                    <div class="property-preview-f-right">
                        <a href="https://listing-themes.com/nexos-wp/listing-preview/classic-americano" class="btn btn-details text-uppercase">View details</a>
                    </div>
                    <div class="property-preview-f-left text-color-primary">
                        <span class="property-card-value" style=""><i class="fa fa-check"></i>Balcony</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Elevator</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Cable TV</span>                    </div>
                </div>
                <div class="property-preview-footer-1">
                    <span class="property-option">                                           
                                                $35000                                            </span>
                </div>
            </div>
            <a href="https://listing-themes.com/nexos-wp/listing-preview/classic-americano" class="complete_box_link"></a>
        </div>
    </div>

        <div class="col-md-6 col-sm-6">
        <div class="property-card card complete_box sw_animatable sw_anim_fadeslow">
            <div class="property-card-header image-box">
                <img src="//listing-themes.com/nexos-wp/wp-content/uploads/sw_win/files/strict_cache/520x3306vita-vilcina-3217-unsplash.jpg" alt="..." class="">
                                <div class="budget is_featured">Featured</div>
                
                                <div class="budget is_favorite">
                    <a href="#" class="add-favorites-action "  data-loginpopup="true"  data-id="6" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart-o"></i></a>
                    <a href="#" class="remove-favorites-action hidden" data-id="6" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart"></i></a>
                    <i class="fa fa-spinner fa-spin fa-custom-ajax-indicator"></i>
                </div>
                                
                
                <a href="https://listing-themes.com/nexos-wp/listing-preview/small-beauty" class="property-card-hover">
                    <span>View <i class="fa fa-angle-double-right"></i></span>
                </a>
                <div class="property-card-tags">
                    <span class="label label-default label-tag-warning color-for-sale">For Sale</span>
                </div>
            </div>
            <div class="property-card-box card-box card-block">
                <h3 class="property-card-title"><a href="https://listing-themes.com/nexos-wp/listing-preview/small-beauty">Small Beauty</a></h3>
                <div class="property-card-descr">Small Beauty from Croatia, Split, Viška ulica with a beautiful courtyard and pool, free&#8230;</div>
                <div class="property-preview-footer clearfix">
                    <div class="property-preview-f-right">
                        <a href="https://listing-themes.com/nexos-wp/listing-preview/small-beauty" class="btn btn-details text-uppercase">View details</a>
                    </div>
                    <div class="property-preview-f-left text-color-primary">
                        <span class="property-card-value" style=""><i class="fa fa-check"></i>Air conditioning</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Internet</span>                    </div>
                </div>
                <div class="property-preview-footer-1">
                    <span class="property-option">                                           
                                                $15000                                            </span>
                </div>
            </div>
            <a href="https://listing-themes.com/nexos-wp/listing-preview/small-beauty" class="complete_box_link"></a>
        </div>
    </div>

<div class="clear hidden-sm"></div><br class="clear visible-sm" />        <div class="col-md-6 col-sm-6">
        <div class="property-card card complete_box sw_animatable sw_anim_fadeslow">
            <div class="property-card-header image-box">
                <img src="//listing-themes.com/nexos-wp/wp-content/uploads/sw_win/files/strict_cache/520x3305ialicante-mediterranean-homes-475777-unsplash.jpg" alt="..." class="">
                
                                <div class="budget is_favorite">
                    <a href="#" class="add-favorites-action "  data-loginpopup="true"  data-id="5" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart-o"></i></a>
                    <a href="#" class="remove-favorites-action hidden" data-id="5" data-ajax="https://listing-themes.com/nexos-wp/wp-admin/admin-ajax.php"><i class="fa fa-heart"></i></a>
                    <i class="fa fa-spinner fa-spin fa-custom-ajax-indicator"></i>
                </div>
                                
                
                <a href="https://listing-themes.com/nexos-wp/listing-preview/retro-old" class="property-card-hover">
                    <span>View <i class="fa fa-angle-double-right"></i></span>
                </a>
                <div class="property-card-tags">
                    <span class="label label-default label-tag-warning color-for-sale">For Sale</span>
                </div>
            </div>
            <div class="property-card-box card-box card-block">
                <h3 class="property-card-title"><a href="https://listing-themes.com/nexos-wp/listing-preview/retro-old">Retro Old</a></h3>
                <div class="property-card-descr">Retro Old from Croatia, Split, Put skalica in the peaceful neighborhood, every room at&#8230;</div>
                <div class="property-preview-footer clearfix">
                    <div class="property-preview-f-right">
                        <a href="https://listing-themes.com/nexos-wp/listing-preview/retro-old" class="btn btn-details text-uppercase">View details</a>
                    </div>
                    <div class="property-preview-f-left text-color-primary">
                        <span class="property-card-value" style=""><i class="fa fa-check"></i>Parking</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Balcony</span><span class="property-card-value" style=""><i class="fa fa-check"></i>Cable TV</span>                    </div>
                </div>
                <div class="property-preview-footer-1">
                    <span class="property-option">                                           
                                                $35000                                            </span>
                </div>
            </div>
            <a href="https://listing-themes.com/nexos-wp/listing-preview/retro-old" class="complete_box_link"></a>
        </div>
    </div>

        <

<div class="clear hidden-sm"></div><br class="clear visible-sm" /><div class="clear"></div>    
</div>

</div>


<nav class="text-center pagin-parent"><ul class="pagination"><li class="page-item"><a class="active" href="#">1</a></li><li class="page-item"><a href="?offset=12#results" data-ci-pagination-page="2">2</a></li><li class="page-item"><a href="?offset=12#results" data-ci-pagination-page="2" rel="next">&gt;</a></li></ul></nav>


</div>



</div>
</div>                </div> <!-- end entry-content -->
            </div>
        </div>
    </div>
</article>
                    
                                        
                            </div><!-- /.center-content -->
        </div>
    </div>
</main><!-- /.main-part--> 