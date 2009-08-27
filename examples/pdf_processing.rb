require 'json'

RestClient.post(
	'http://ec2-75-101-213-115.compute-1.amazonaws.com/jobs', 
	# 'http://localhost:9173/jobs',
	{:json => {
	
		'action' => 'pdf_to_images',
		
		'inputs' => [
		  # 'http://s3.amazonaws.com/cloud_crowd_development/pdfs/DocumentCloud_As_Submitted.pdf'
		  'http://s3.amazonaws.com/cloud_crowd_development/pdfs/aclu_v_dod.pdf'
		],
		
		'options' => {
		  'batch_size' => 7
		}
		
	}.to_json}
)