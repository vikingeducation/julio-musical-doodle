require 'rails_helper'

describe Team do

  let(:team) { create(:team) }
  let(:member) { create(:employee) }
  let(:progress_report) { create(:progress_report) }


  it { is_expected.to belong_to(:owner) }
  it { is_expected.to have_many(:members) }
  it { is_expected.to have_many(:progress_reports) }


  describe 'associations' do
    before do
      team.progress_reports << progress_report
      team.members << member
      team.save!
    end


    describe '#members' do
      it 'returns a collection of members' do
        expect(team.members.first).to be_an_instance_of(Employee)
      end


      it 'returns the members for this team' do
        expect(team.members.first).to eq(member)
      end
    end


    describe '#progress_reports' do
      it 'returns a collection of progress reports' do
        expect(team.progress_reports.first).to be_an_instance_of(ProgressReport)
      end


      it 'returns the progress reports for this team' do
        expect(team.progress_reports.first).to eq(progress_report)
      end
    end
  end
end

