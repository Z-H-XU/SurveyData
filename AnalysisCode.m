
% Project title:  The potential factors of digital plagiarism in universities


clc;clear;

SurveyData = readtable('SurveyData.xlsx','sheet', 'Data');


tb = crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.Understanding);
[h,p,stats] = fishertest(tb);
fprintf('Individual factors: \n Understand the definition of plagiarism:  test decision : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);

tb = crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.GoodGrade);
[h,p,stats] = fishertest(tb);
fprintf('Desire to get a good final course grade: test decision : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);

tb= crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.Poortime);
[h,p,stats] = fishertest(tb);
fprintf('Poor time management: %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);

tb = crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.Disinterest);
[h,p,stats] = fishertest(tb);
fprintf('Disinterest in the course assignment: %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);

tb = crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.Failing);
[h,p,stats] = fishertest(tb);
fprintf('Fear of failure: %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);

tb = crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.Easy);
[h,p,stats] = fishertest(tb);
fprintf('Coursework is too easy: %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);


tb= crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.Regulations);
[h,p,stats] = fishertest(tb);
fprintf('\n Institutional factors: \n Understand the definition of plagiarism:  test decision : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);

tb = crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.Penalties);
[h,p,stats] = fishertest(tb);
fprintf('Penalisation for plagiarism:  test decision : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);


tb = crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.Detection);
[h,p,stats] = fishertest(tb);
fprintf('plagiarism detection tools:  test decision : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);



tb = crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.LecturersRules);
[h,p,stats] = fishertest(tb);
fprintf('\n Teaching factors:\n Lecturers have highlighted plagiarism in their courses : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);

tb = crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.Feedback);
[h,p,stats] = fishertest(tb);
fprintf('Lecturers give feedback on plagiarized assignments : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);


tb = crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.CreativeTeaching);
[h,p,stats] = fishertest(tb);
fprintf('Lecturers design creative learning environments : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);

tb= crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.ReviewSubmissionCarefully>3);
[h,p,stats] = fishertest(tb);
fprintf('Lecturers review assignments carefully : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);


tb = crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.TeacherPresentation);
[h,p,stats] = fishertest(tb);
fprintf('Teachers make lectures interesting and lively : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);

tb = crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.LecturerCopied);
[h,p,stats] = fishertest(tb);
fprintf('Teachers commit plagiarism such as copying lecture notes : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);


tb = crosstab(SurveyData.PlagiarismFrequncy>1.1,SurveyData.SatisficationReviews>3);
[h,p,stats] = fishertest(tb);
fprintf('\n Factors related to learning outcomes :\n Satisfaction with reviews of submissions : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);


tb= crosstab(SurveyData.PlagiarismFrequncy >1.1,SurveyData.SatisficationSubmission>3);
[h,p,stats] = fishertest(tb);
fprintf('Satisfaction with their completed coursework : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);


tb = crosstab(SurveyData.PlagiarismFrequncy >1.1,SurveyData.ImprovingLearning);
[h,p,stats] = fishertest(tb);
fprintf('Doing coursework improves learning: %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);

tb = crosstab(SurveyData.PlagiarismFrequncy >1.1,SurveyData.BuildConfidence);
[h,p,stats] = fishertest(tb);
fprintf('Doing coursework builds confidence : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);


tb = crosstab(SurveyData.PlagiarismFrequncy >1.1,SurveyData.Nothing);
[h,p,stats] = fishertest(tb);
fprintf('Learn nothing after doing coursework : %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);


tb = crosstab(SurveyData.PlagiarismFrequncy >1.1,SurveyData.WasteTime);
[h,p,stats] = fishertest(tb);
fprintf('Doing coursework is a waste of time: %d; \t  p-values: %f; \t  odds ratios: %f;\t  \n',h,stats.OddsRatio, p);

