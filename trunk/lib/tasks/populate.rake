# gem install populator
# gem install faker
namespace :db do
    srand 1234 

    desc "Erase and fill database"
    task :populate =>:environment do
        require 'populator'
        require 'faker'
        #100.time do Product.create()
        
        [Project,Document,DocumentType,DocumentVersion].each(&:delete_all)
        pn = 0
        Project.populate 6 do |project|
            project.name= "Prj_"+Populator.words(1).titleize
            project.project_number = pn.to_s
            pn = pn +1
            i = 0
            DocumentType.populate(2..10) do |doctype|
                doctype.project_id = project.id
                doctype.description = "DocTyp "+Populator.words(1..4)# Populator.sentences(1)
                doctype.prefix= i
                doctype.dir_name= Populator.words(1)
                i = i+1
                dn = 0
                Document.populate(2..4) do |doc|
                    doc.project_id = project.id
                    doc.document_type_id = doctype.id
                    doc.doc_number = dn.to_s
                    dn = dn +1
                    doc.description = "DocDesc " +Populator.words(1..4)
                    doc.fname_suffix = "DocFname"+Populator.words(1)
                    vernum = 0
                    DocumentVersion.populate(2..5) do |ver|
                        ver.document_id = doc.id
                        ver.version = vernum
                        vernum = vernum +1
                        ver.extension = "txt"
                        ver.author= Faker::Name.name
                        ver.released = 2.years.ago..Time.now
                        ver.reviewed = rand()>0.5
                        ver.accepted=rand()>0.2
                        ver.with_comments=rand()>0.7
                        ver.completed =  ver.released + 2.days
                        ver.paper= rand()>0.9
                        ver.testresult_doc="Tresult"+Populator.words(1)
              
 


                       
                       end
                    
                    
                    
                    
                    end
                
                            
                
                end
                
                
            
            end
    end
end
            
        
        
