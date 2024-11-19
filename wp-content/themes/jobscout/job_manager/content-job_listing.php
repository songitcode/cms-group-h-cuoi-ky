<?php
/**
 * Job listing in the loop.
 *
 * This template can be overridden by copying it to yourtheme/job_manager/content-job_listing.php.
 *
 * @see         https://wpjobmanager.com/document/template-overrides/
 * @author      Automattic
 * @package     WP Job Manager
 * @category    Template
 * @since       1.0.0
 * @version     1.27.0
 */

if (!defined('ABSPATH')) {
	exit; // Exit if accessed directly.
}

global $post;
$job_salary = get_post_meta(get_the_ID(), '_job_salary', true);
$job_featured = get_post_meta(get_the_ID(), '_featured', true);
$company_name = get_post_meta(get_the_ID(), '_company_name', true);

?>
<!-- <article <?php job_listing_class(); ?> data-longitude="<?php echo esc_attr($post->geolocation_lat); ?>"
	data-latitude="<?php echo esc_attr($post->geolocation_long); ?>">

	<figure class="company-logo">
		<?php the_company_logo('thumbnail'); ?>
	</figure>

	<div class="job-title-wrap">

		<h2 class="entry-title">
			<a href="<?php the_job_permalink(); ?>"><?php wpjm_the_job_title(); ?></a>
		</h2>

		<?php if ($company_name) { ?>
			<div class="company-name">
				<?php the_company_name(); ?>
			</div>
		<?php } ?>

		<div class="entry-meta">
			<?php
			do_action('job_listing_meta_start');

			if ($job_salary) {
				echo '<div class="salary-amt">
                        <span class="currency"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M334.89 121.63l43.72-71.89C392.77 28.47 377.53 0 352 0H160.15c-25.56 0-40.8 28.5-26.61 49.76l43.57 71.88C-9.27 240.59.08 392.36.08 412c0 55.23 49.11 100 109.68 100h292.5c60.58 0 109.68-44.77 109.68-100 0-19.28 8.28-172-177.05-290.37zM160.15 32H352l-49.13 80h-93.73zM480 412c0 37.49-34.85 68-77.69 68H109.76c-42.84 0-77.69-30.51-77.69-68v-3.36c-.93-59.86 20-173 168.91-264.64h110.1C459.64 235.46 480.76 348.94 480 409zM285.61 310.74l-49-14.54c-5.66-1.62-9.57-7.22-9.57-13.68 0-7.86 5.76-14.21 12.84-14.21h30.57a26.78 26.78 0 0 1 13.93 4 8.92 8.92 0 0 0 11-.75l12.73-12.17a8.54 8.54 0 0 0-.65-13 63.12 63.12 0 0 0-34.17-12.17v-17.6a8.68 8.68 0 0 0-8.7-8.62H247.2a8.69 8.69 0 0 0-8.71 8.62v17.44c-25.79.75-46.46 22.19-46.46 48.57 0 21.54 14.14 40.71 34.38 46.74l49 14.54c5.66 1.61 9.58 7.21 9.58 13.67 0 7.87-5.77 14.22-12.84 14.22h-30.61a26.72 26.72 0 0 1-13.93-4 8.92 8.92 0 0 0-11 .76l-12.84 12.06a8.55 8.55 0 0 0 .65 13 63.2 63.2 0 0 0 34.17 12.17v17.55a8.69 8.69 0 0 0 8.71 8.62h17.41a8.69 8.69 0 0 0 8.7-8.62V406c25.68-.64 46.46-22.18 46.57-48.56.02-21.5-14.13-40.67-34.37-46.7z"></path></svg></span>
                        <span class="salary">' . esc_html($job_salary) . '</span>
                    </div>';
			}
			?>
			<div class="company-address">
				<i class="fas fa-map-marker-alt"></i>
				<?php the_job_location(true); ?>
			</div>

			<?php
			if (get_option('job_manager_enable_types')) {
				$types = wpjm_get_the_job_types();
				if (!empty($types)):
					foreach ($types as $jobtype): ?>
						<li class="job-type <?php echo esc_attr(sanitize_title($jobtype->slug)); ?>">
							<?php echo esc_html($jobtype->name); ?>
						</li>
					<?php endforeach; endif;
			}
			do_action('job_listing_meta_end');
			?>
		</div>
	</div>

	<?php if ($job_featured) { ?>
		<div class="featured-label"><?php esc_html_e('Featured', 'jobscout'); ?></div>
	<?php } ?>

</article> -->

<style>
	.job_listings-custom {
		display: flex;
		flex-wrap: wrap;
		gap: 20px;
		padding: 20px;
		padding-left: 30px;
		background-color: #f1f1f1;
	}

	@media (max-width: 768px) {
		.job-item {
			flex: 1 1 100%;
		}
	}

	.job-item {
		flex: 1 1 calc(50% - 20px);
		padding: 15px;
		border-radius: 5px;
		background-color: #fff;
	}

	.top {
		display: flex;
	}

	.job-logo img {
		max-width: 90px;
		height: 100%;
		margin-right: 15px;
	}

	.job-details {
		display: flex;
		flex-direction: column;
		justify-content: space-between;
		padding-top: 10px;
		width: 100%;

	}

	.job-details h3 {
		margin: 0;
		font-size: 18px;
		color: #333;
	}

	.entry-content a {
		text-decoration: none !important;
	}

	.job-post-date {
		font-size: 15px
	}

	.job-details .entry-meta {
		font-size: 14px;
		color: #666;
		background-color: #f1f1f1;
		padding: 10px;
	}

	.entry-meta span {
		padding: 0px 4px 0px 0px;

		margin: 0px;
		font-size: 12px;
	}

	.content {
		margin-top: 10px;
	}

	.job-description-list {
		list-style: disc;
		margin: 0px;
		padding-left: 15px;
	}

	.job-details ul li {
		font-size: 14px;
		color: #444;
	}
</style>

<div class="job-item">
	<div class="top">
		<div class="job-logo">
			<?php the_company_logo('thumbnail'); ?>
		</div>
		<div class="job-details">
			<h3>
				<a href="<?php the_job_permalink(); ?>"><?php wpjm_the_job_title(); ?></a>
			</h3>
			<div class="job-post-date">
				<p>Created <?php echo get_the_date('F j, Y'); ?></p>
			</div>
			<div class="entry-meta">

				<?php
				$time_value = get_post_meta($post->ID, 'Time', true);
				if ($time_value) {
					echo '<span class="job-time">' . esc_html($time_value) . '</span>';
				}
				?>


				<?php
				if (get_option('job_manager_enable_types')) {
					$types = wpjm_get_the_job_types();
					if (!empty($types)):
						foreach ($types as $jobtype): ?>
							<span class="job-type <?php echo esc_attr(sanitize_title($jobtype->slug)); ?>">
								<?php echo esc_html($jobtype->name); ?>
							</span>
						<?php endforeach; endif;
				}
				do_action('job_listing_meta_end');
				?>
				<span>
					<?php the_job_location(true); ?>
				</span>
			</div>

		</div>

	</div>
	<div class="content">
		<div class="entry-meta">
			<?php
			do_action('job_listing_meta_start');

			// Lấy nội dung công việc
			$job_content = get_the_content();

			// Phân tách nội dung thành các đoạn
			$paragraphs = explode("\n", $job_content); // Chia nội dung thành các đoạn bằng dấu xuống dòng
			
			// Hiển thị 3 đoạn đầu tiên có chứa chữ trong thẻ <li>
			$count = 0;
			if (count($paragraphs) > 0) {
				echo '<ul class="job-description-list">';
				foreach ($paragraphs as $paragraph) {
					// Loại bỏ khoảng trắng và kiểm tra nếu đoạn không rỗng
					$trimmed_paragraph = trim($paragraph);
					if (!empty($trimmed_paragraph)) { // Chỉ hiển thị đoạn có chữ
						echo '<li>' . esc_html($trimmed_paragraph) . '</li>';
						$count++;
					}
					// Dừng khi đã lấy đủ 3 đoạn
					if ($count >= 3)
						break;
				}
				echo '</ul>';
			}
			do_action('job_listing_meta_end');
			?>
		</div>

	</div>
</div>