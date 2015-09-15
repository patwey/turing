Enrollment class
----------------
* holds a district name and the methods we want to call
* instantiating the class: 
 
        dist_20 = Enrollment.new('District 20')

* a method requiring dropout rates:
        
        dropout_rates = EnrollmentParser.parse(@name, InputFiles::DROPOUT_FILE)

* a method require graduation rates:   
        
        grad_rates = EnrollmentParser.parse(@name, InputFiles::GRAD_FILE)


EnrollmentParser class
----------------------
* pass a district name and the file we want to access
* instantiating the class: 

        EnrollmentParser(district, file)

* parse method:
        
        def parse
          CSV.foreach(file) do |row|
            # put stuff in output hash
          end
          output_hash # return this
        end

InputFiles class
----------------
* holds the filenames and their associated type that we want to store
* the dropout data file path: 
 
        InputFiles::DROPOUT_FILE
