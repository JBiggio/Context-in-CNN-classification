import delimited "C:\Users\jing\Documents\Bocconi\DSBA\Deep Learning and Computer Vision\Project\Deep_Learning_sample_data_+_code\final_logit.csv", clear

//Variables Generation
encode species, gen(species_code)
encode family, gen(family_code)
gen log_sift = log(sift)

//Vanilla Model

logit vanilla bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue i.species_code
logit vanilla bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue i.family_code

logit vanilla bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue 
margins, dydx(*)
logit vanilla bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "mammalia"
logit vanilla bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "aves"
logit vanilla bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "reptilia"
logit vanilla bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "insecta"

//Masked Model

logit masked bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue i.species_code
logit masked bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue i.family_code

logit masked bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue 
margins, dydx(*)
logit masked bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "mammalia"
logit masked bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "aves"
logit masked bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "reptilia"
logit masked bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "insecta"

//BBContent Model

logit bbcontent bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue i.species_code
logit bbcontent bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue i.family_code

logit bbcontent bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue 
margins, dydx(*)
logit bbcontent bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "mammalia"
logit bbcontent bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "aves"
logit bbcontent bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "reptilia"
logit bbcontent bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "insecta"

//Mixed Model

logit mixed bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue i.species_code
logit mixed bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue i.family_code

logit mixed bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue 
margins, dydx(*)
logit mixed bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "mammalia"
logit mixed bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "aves"
logit mixed bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "reptilia"
logit mixed bbox_ratio log_sift contrast bright diff_cont_red diff_cont_green diff_cont_blue if family == "insecta"