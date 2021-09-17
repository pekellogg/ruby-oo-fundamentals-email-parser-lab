# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser

    @@all = []

    attr_accessor :emails_str
    
    def self.all
        @@all
    end

    def initialize(nonformatted_emails)
        @emails_str = nonformatted_emails
        @@all << self
    end

    def parse
        emails_collection = @emails_str.split(/[, ]/)
        cleaned_emails = emails_collection.delete_if{ |i| i == "" }
        cleaned_emails.uniq
    end

end

# TEST DATA
# space_list = EmailAddressParser.new("avi@test.com arel@test.com test@avi.com test@arel.com")
# space_list.parse

# comma_space = EmailAddressParser.new("avi@test.com, arel@test.com")
# comma_space.parse

# csv_space = EmailAddressParser.new("avi@test.com, arel@test.com test@avi.com, test@arel.com")
# csv_space.parse

# dupe = EmailAddressParser.new("avi@test.com, avi@test.com")
# dupe.parse