# require 'rails_helper'
# #
# # RSpec.describe ParentController, type: :controller do
# #
# # end
# describe "parent" do
#     describe "should show children" do
#       it "should display 'No children registered yet'"do
#         post :show
#         expect(page).to have_content 'No children registered yet'
#       end
#     end
#     describe "should save new parents correctly" do
#         it "should redirect to the new parent page when it fails to save" do
#             p = Parent.new
#
#             Parent.should_receive(:new).and_return(p)
#             p.should_receive(:save).and_return(nil)
#
#             post :create, { :parent => {:firstname=>"Jon", :lastname=>"snow","address" => "13 oak drive", "phone" => "6177840617", "email" => "wef@wef.com"}}
#             response.should redirect_to(new_parent_path)
#
#         end
#     end
#     describe "should update parents correctly" do
#         it "should redirect to the edit parent page if an update fails" do
#             p = Parent.new
#
#             #Parent.should_receive(:edit).and_return(p)
#             p.should_receive(:update).and_return(nil)
#
#             post :update, :parent
#             response.should redirect_to(edit_parent_path(p))
#         end
#     end
# end
