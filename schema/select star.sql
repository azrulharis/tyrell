SELECT 
Jobs.*, 
JobCategories.*, 
JobTypes.* 
FROM jobs Jobs
LEFT JOIN jobs_personalities JobsPersonalities ON Jobs.id = (JobsPersonalities.job_id)
LEFT JOIN personalities Personalities ON (Personalities.id = (JobsPersonalities.personality_id) AND (Personalities.deleted) IS NULL)
LEFT JOIN jobs_practical_skills JobsPracticalSkills ON Jobs.id = (JobsPracticalSkills.job_id)
LEFT JOIN practical_skills PracticalSkills ON (PracticalSkills.id = (JobsPracticalSkills.practical_skill_id) AND (PracticalSkills.deleted) IS NULL)
LEFT JOIN jobs_basic_abilities JobsBasicAbilities ON Jobs.id = (JobsBasicAbilities.job_id)
LEFT JOIN basic_abilities BasicAbilities ON (BasicAbilities.id = (JobsBasicAbilities.basic_ability_id) AND (BasicAbilities.deleted) IS NULL)
LEFT JOIN jobs_tools JobsTools ON Jobs.id = (JobsTools.job_id)
LEFT JOIN affiliates Tools ON (Tools.type = 1 AND Tools.id = (JobsTools.affiliate_id) AND (Tools.deleted) IS NULL)
LEFT JOIN jobs_career_paths JobsCareerPaths ON Jobs.id = (JobsCareerPaths.job_id)
LEFT JOIN affiliates CareerPaths ON (CareerPaths.type = 3 AND CareerPaths.id = (JobsCareerPaths.affiliate_id) AND (CareerPaths.deleted) IS NULL)
LEFT JOIN jobs_rec_qualifications JobsRecQualifications ON Jobs.id = (JobsRecQualifications.job_id)
LEFT JOIN affiliates RecQualifications ON (RecQualifications.type = 2 AND RecQualifications.id = (JobsRecQualifications.affiliate_id) AND (RecQualifications.deleted) IS NULL)
LEFT JOIN jobs_req_qualifications JobsReqQualifications ON Jobs.id = (JobsReqQualifications.job_id)
LEFT JOIN affiliates ReqQualifications ON (ReqQualifications.type = 2 AND ReqQualifications.id = (JobsReqQualifications.affiliate_id) AND (ReqQualifications.deleted) IS NULL)
INNER JOIN job_categories JobCategories ON (JobCategories.id = (Jobs.job_category_id) AND (JobCategories.deleted) IS NULL)
INNER JOIN job_types JobTypes ON (JobTypes.id = (Jobs.job_type_id) AND (JobTypes.deleted) IS NULL)

WHERE 
	(JobCategories.name LIKE '%キャビンアテンダント%'
	OR JobTypes.name LIKE '%キャビンアテンダント%'
	OR Jobs.name LIKE '%キャビンアテンダント%'
	OR Jobs.description LIKE '%キャビンアテンダント%'
	OR Jobs.detail LIKE '%キャビンアテンダント%'
	OR Jobs.business_skill LIKE '%キャビンアテンダント%'
	OR Jobs.knowledge LIKE '%キャビンアテンダント%'
	OR Jobs.location LIKE '%キャビンアテンダント%'
	OR Jobs.activity LIKE '%キャビンアテンダント%'
	OR Jobs.salary_statistic_group LIKE '%キャビンアテンダント%'
	OR Jobs.salary_range_remarks LIKE '%キャビンアテンダント%'
	OR Jobs.restriction LIKE '%キャビンアテンダント%'
	OR Jobs.remarks LIKE '%キャビンアテンダント%'
	OR Personalities.name LIKE '%キャビンアテンダント%'
	OR PracticalSkills.name LIKE '%キャビンアテンダント%'
	OR BasicAbilities.name LIKE '%キャビンアテンダント%'
	OR Tools.name LIKE '%キャビンアテンダント%'
	OR CareerPaths.name LIKE '%キャビンアテンダント%'
	OR RecQualifications.name LIKE '%キャビンアテンダント%'
	OR ReqQualifications.name LIKE '%キャビンアテンダント%')
AND Jobs.publish_status = 1
AND Jobs.deleted IS NULL
GROUP BY Jobs.id
ORDER BY Jobs.sort_order desc,
Jobs.id DESC LIMIT 50 OFFSET 0 