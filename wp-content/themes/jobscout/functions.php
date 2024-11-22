<?php
/**
 * JobScout functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package JobScout
 */

$jobscout_theme_data = wp_get_theme();
if (!defined('JOBSCOUT_THEME_VERSION'))
	define('JOBSCOUT_THEME_VERSION', $jobscout_theme_data->get('Version'));
if (!defined('JOBSCOUT_THEME_NAME'))
	define('JOBSCOUT_THEME_NAME', $jobscout_theme_data->get('Name'));

/**
 * Implement Local Font Method functions.
 */
require get_template_directory() . '/inc/class-webfont-loader.php';

/**
 * Custom Functions.
 */
require get_template_directory() . '/inc/custom-functions.php';

/**
 * Standalone Functions.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Template Functions.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Custom functions for selective refresh.
 */
require get_template_directory() . '/inc/partials.php';

if (jobscout_is_rara_theme_companion_activated()):
	/**
	 * Modify filter hooks of RTC plugin.
	 */
	require get_template_directory() . '/inc/rtc-filters.php';
endif;

/**
 * Custom Controls
 */
require get_template_directory() . '/inc/custom-controls/custom-control.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer/customizer.php';

/**
 * Widgets
 */
require get_template_directory() . '/inc/widgets.php';

/**
 * Metabox
 */
require get_template_directory() . '/inc/metabox.php';

/**
 * Getting Started
 */
require get_template_directory() . '/inc/dashboard/dashboard.php';

/**
 * Plugin Recommendation
 */
require get_template_directory() . '/inc/tgmpa/recommended-plugins.php';

/**
 * Add theme compatibility function for woocommerce if active
 */
if (jobscout_is_woocommerce_activated()) {
	require get_template_directory() . '/inc/woocommerce-functions.php';
}

/**
 * Modify filter hooks of WP Job Manager plugin.
 */
if (jobscout_is_wp_job_manager_activated()):
	require get_template_directory() . '/inc/wp-job-manager-filters.php';
endif;

// Load more
function enqueue_load_more_script()
{
	wp_enqueue_script('load-more-jobs', get_template_directory_uri() . '/inc/js/load-more-jobs.js', array('jquery'), null, true);

	// Localize script để truyền URL và nonce vào JavaScript
	wp_localize_script('load-more-jobs', 'loadMoreParams', array(
		'ajaxurl' => admin_url('admin-ajax.php'),
		'nonce' => wp_create_nonce('load_more_jobs_nonce'),
	));
}
add_action('wp_enqueue_scripts', 'enqueue_load_more_script');

function load_more_jobs()
{
	if (isset($_GET['page'])) {
		$paged = $_GET['page'];
	} else {
		$paged = 1;
	}

	// Câu truy vấn để lấy bài đăng
	$args = array(
		'post_type' => 'job_listing',
		'posts_per_page' => 4,
		'paged' => $paged, // Phân trang
	);

	$jobs_query = new WP_Query($args);

	if ($jobs_query->have_posts()) {
		while ($jobs_query->have_posts()) {
			$jobs_query->the_post();
			?>
			<div class="col-md-6">
				<div class="card-posting border p-4">
					<div class="row">
						<div class="col-md-4 job-image">
							<?php if (has_post_thumbnail()) { ?>
								<img src="<?php the_post_thumbnail_url(); ?>" alt="<?php the_title(); ?>">
							<?php } else { ?>
								<img src="https://via.placeholder.com/150" alt="<?php the_title(); ?>">
							<?php } ?>
						</div>
						<div class="col job-content">
							<h3 class="job-title"><?php the_title(); ?></h3>
							<p class="job-meta mb-1">Created: <?php the_time('F j, Y'); ?></p>
							<div class="job-category">
								<div class="box-job-category btn-group">
									<span class="ms-2">
										<?php
										if (get_option('job_manager_enable_types')) {
											$types = wpjm_get_the_job_types();
											if (!empty($types)):
												foreach ($types as $jobtype): ?>
													<span class="job-type <?php echo esc_attr(sanitize_title($jobtype->slug)); ?>">
														<?php echo esc_html($jobtype->name); ?>
													</span>
												<?php endforeach;
											endif;
										}
										?>
									</span>
									<p>
										<?php
										$terms = get_the_terms(get_the_ID(), 'job_listing_category');
										if (!empty($terms) && !is_wp_error($terms)) {
											echo esc_html($terms[0]->name);
										} else {
											echo 'N/A';
										}
										?>
									</p>
									<p><?php echo esc_html(get_post_meta(get_the_ID(), '_job_location', true)); ?></p>
								</div>
							</div>
						</div>
					</div>
					<div class="job-description m-0">
						<p><?php echo wp_trim_words(get_the_content(), 20, '...'); ?></p>
					</div>
				</div>
			</div>
			<?php
		}
	} else {
		echo false; // Nếu không có bài đăng nào, trả về false
	}

	wp_reset_postdata();
	die();
}

add_action('wp_ajax_load_more_jobs', 'load_more_jobs');
add_action('wp_ajax_nopriv_load_more_jobs', 'load_more_jobs');