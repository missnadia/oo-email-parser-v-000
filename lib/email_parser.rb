# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  @@CSV_emails = []

  def initialize(emails)
    @emails = emails
    @@CSV_emails << @emails
  end

  def self.CSV_emails
    @@CSV_emails.uniq
  end

  def parse
    @@CSV_emails.each do |emails|
      emails.split(", ")
    end
  end

end
