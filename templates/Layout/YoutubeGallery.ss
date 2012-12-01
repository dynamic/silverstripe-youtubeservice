<div class="content-container">	
	<article>
		<h1>$Title</h1>
		<div class="content">$Content</div>
		<h2>$FeedTitle</h2>
		<% if YoutubeVideos.Count %>
			<ul class="PageList youtubegallery">
			<% control YoutubeVideos %>
				<li>
					<div class="still">
						<% if Top.ShowVideoInPopup %>
							<a 
								params="lightwindow_width={$PlayerWidth},lightwindow_height={$PlayerHeight},lightwindow_loading_animation=false,lightwindow_type=external" 
								href="{$PlayerURL}" 
								class="lightwindow"
							>
								<% control SmallThumbnail %>
									<img src="$URL" alt="$Top.Title" width="300" />
								<% end_control %>
							</a>
						<% else %>
							<a href="$PlayerURL" title="$title">
								<% control SmallThumbnail %>
									<img src="$URL" alt="$Title" width="$Width" height="$Height" />
								<% end_control %>
							</a>
						<% end_if %>
					</div>
					<div class="info">
						<h3>
							<% if Top.ShowVideoInPopup %>
								<a 
									params="lightwindow_width={$PlayerWidth},lightwindow_height={$PlayerHeight},lightwindow_loading_animation=false,lightwindow_type=external" 
									href="{$PlayerURL}" 
									class="lightwindow"
								>
									$Title
								</a>
							<% else %>
								<a href="$PlayerURL" title="$Title">$Title</a>
							<% end_if %>
						</h3>
						<p>
							$Description.Summary<br />
							<strong>Duration : </strong>$Runtime
						</p>
					</div>
					<div class="clearfix"></div>
				</li>
			<% end_control %>
			</ul>
			
			<div class="pages">
				<div class="paginator">
				</div>
				<span class="results">($YoutubeVideos.Count Videos)</span>
			</div>
			
			<% if YoutubeVideos.MoreThanOnePage %>
			    <% if YoutubeVideos.NotFirstPage %>
			        <a class="prev" href="$YoutubeVideos.PrevLink">Prev</a>
			    <% end_if %>
			    <% loop YoutubeVideos.Pages %>
			        <% if CurrentBool %>
			            $PageNum
			        <% else %>
			            <% if Link %>
			                <a href="$Link">$PageNum</a>
			            <% else %>
			                ...
			            <% end_if %>
			        <% end_if %>
			        <% end_loop %>
			    <% if YoutubeVideos.NotLastPage %>
			        <a class="next" href="$YoutubeVideos.NextLink">Next</a>
			    <% end_if %>
			<% end_if %>
		<% else %>
			<span>Sorry! Gallery doesn't contain any images for this page.</span>
		<% end_if %>
	</article>
		$Form
		$PageComments
</div>
<% include SideBar %>
