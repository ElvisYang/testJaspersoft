class WelcomeController < ApplicationController

	def index
		# require 'pry'

		# Pry.start

		JasperserverRails::Jasperserver.new.run_report 'public/test.pdf' do
		  format 'pdf'
		  # report 'public/ElvisTest_Report'
		  report 'public/Samples/Reports/01._Geographic_Results_by_Segment_Report'
		  params({ :Value1 => 'Value1' })
		end

		JasperserverRails::Jasperserver.new.run_report 'public/test.csv' do
		  format 'csv'
		  # report 'public/ElvisTest_Report'
		  report 'public/Samples/Reports/01._Geographic_Results_by_Segment_Report'
		  params({ :Value1 => 'Value1' })
		end
	end

	def generate

	end

end
