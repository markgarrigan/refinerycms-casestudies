# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Casestudies" do
    describe "Admin" do
      describe "casestudies" do
        login_refinery_user

        describe "casestudies list" do
          before do
            FactoryGirl.create(:casestudy, :title => "UniqueTitleOne")
            FactoryGirl.create(:casestudy, :title => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.casestudies_admin_casestudies_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.casestudies_admin_casestudies_path

            click_link "Add New Casestudy"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Title", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Casestudies::Casestudy.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Title can't be blank")
              Refinery::Casestudies::Casestudy.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:casestudy, :title => "UniqueTitle") }

            it "should fail" do
              visit refinery.casestudies_admin_casestudies_path

              click_link "Add New Casestudy"

              fill_in "Title", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Casestudies::Casestudy.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:casestudy, :title => "A title") }

          it "should succeed" do
            visit refinery.casestudies_admin_casestudies_path

            within ".actions" do
              click_link "Edit this casestudy"
            end

            fill_in "Title", :with => "A different title"
            click_button "Save"

            page.should have_content("'A different title' was successfully updated.")
            page.should have_no_content("A title")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:casestudy, :title => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.casestudies_admin_casestudies_path

            click_link "Remove this casestudy forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Casestudies::Casestudy.count.should == 0
          end
        end

      end
    end
  end
end
