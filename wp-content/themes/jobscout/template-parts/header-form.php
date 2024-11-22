<?php

/**
 *
 * Creating a custom job search form for homepage
 * The [jobs] shortcode is will use search_location and search_keywords variables from the query string.
 *
 * @link https://wpjobmanager.com/document/tutorial-creating-custom-job-search-form/
 *
 * @package JobScout
 */
$find_a_job_link = get_option('job_manager_jobs_page_id', 0);
$post_slug       = get_post_field('post_name', $find_a_job_link);
$ed_job_category = get_option('job_manager_enable_categories');

if ($post_slug) {
  $action_page =  home_url('/' . $post_slug);
} else {
  $action_page =  home_url('/');
}
?>

<div class="job_listings">

  <form class="jobscout_job_filters" method="GET" action="<?php echo esc_url($action_page) ?>">
    <div class="search_jobs">

      <div class="search_keywords">
        <label for="search_keywords"><?php esc_html_e('Keywords', 'jobscout'); ?></label>
        <input type="text" id="search_keywords" name="search_keywords" placeholder="<?php esc_attr_e('Search for jobs, companies, skills', 'jobscout'); ?>">
      </div>

      <div class="search_location">
        <?php
        global $wpdb;
        $table  = $wpdb->prefix . 'postmeta';
        $sql = "SELECT DISTINCT SUBSTRING_INDEX(`meta_value`,',',-1) as location FROM `wp_postmeta` WHERE `meta_key` like '%location%' ORDER BY location";
        $data = $wpdb->get_results($wpdb->prepare($sql));
        ?>

        <select id="search_location" name="search_location" value="Khu vực">
          <option value="">Khu Vực</option>
          <?php foreach ($data as $value) : ?>
            <option value="<?php echo $value->location; ?>"><?php echo $value->location; ?></option>
          <?php endforeach ?>
        </select>

      </div>

      <div class="search_submit">
        <input type="submit" value="<?php esc_attr_e('SEARCH JOBS', 'jobscout'); ?>" />
      </div>

    </div>
  </form>

</div>