require 'rails_helper'

describe Employee do

  let(:team) { create(:team) }
  let(:employee) { create(:employee) }
  let(:progress_report) { create(:progress_report) }


  it { is_expected.to have_many(:teams) }
  it { is_expected.to have_many(:owned_teams) }
  it { is_expected.to have_many(:progress_reports) }


  describe 'associations' do
    before do
      employee.teams << team
      employee.progress_reports << progress_report
      employee.save!
    end

    describe '#teams' do
      it 'returns a collection of teams' do
        expect(employee.teams.first).to be_an_instance_of(Team)
      end


      it 'returns the teams for this employee' do
        expect(employee.teams.first).to eq(team)
      end
    end


    describe '#progress_reports' do
      it 'returns a collection of progress reports' do
        expect(employee.progress_reports.first).to be_an_instance_of(ProgressReport)
      end


      it 'returns the progress reports for this employee' do
        expect(employee.progress_reports.first).to eq(progress_report)
      end
    end
  end
end

