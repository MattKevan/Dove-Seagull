---
title: Karl Blossfeldt
layout: page
lead: 
section: 28031226

---
<div class="card listing">
	<div class="container">
		<div class="row">
			{% for item in site.artwork %}
				{% if item.section_id == page.section %}
					
 {% include artwork-teaser.html %}
 {% endif%}
			{% endfor %}


		</div>
	</div>
				
</div>

