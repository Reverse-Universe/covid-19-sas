            %IF &HAVE_SASETS = YES AND %SYMEXIST(ISOChangeDate1) %THEN %DO;
                data work.FIT_PRED; set &PULLLIB..FIT_PRED; where ScenarioIndex=&ScenarioIndex_recall. and ScenarioSource="&ScenarioSource_recall." and ScenarioUser="&ScenarioUser_recall."; run;
                data work.FIT_PARMS; set &PULLLIB..FIT_PARMS; where ScenarioIndex=&ScenarioIndex_recall. and ScenarioSource="&ScenarioSource_recall." and ScenarioUser="&ScenarioUser_recall."; run;
            %END;