require 'rails_helper'

describe ProgressReport do

  let(:author) { create(:employee) }
  let(:team) { create(:team) }
  let(:progress_report) { create(:progress_report) }


  it { is_expected.to belong_to(:author) }
  it { is_expected.to belong_to(:team) }


  describe 'associations' do
    before do
      progress_report.author = author
      progress_report.team = team
      progress_report.save!
    end


    describe '#author' do
      it 'returns an employee' do
        expect(progress_report.author).to be_an_instance_of(Employee)
      end


      it 'returns the author' do
        expect(progress_report.author).to eq(author)
      end
    end


    describe '#team' do
      it 'returns a team' do
        expect(progress_report.team).to be_an_instance_of(Team)
      end


      it 'returns the team the progress report is about' do
        expect(progress_report.team).to eq(team)
      end
    end
  end
end



