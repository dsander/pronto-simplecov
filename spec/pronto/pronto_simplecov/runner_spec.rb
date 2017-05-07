require "spec_helper"
require 'pp'
describe Pronto::ProntoSimplecov::Runner do
  let(:runner) { Pronto::ProntoSimplecov::Runner.new(patches) }
  let(:patches) { [] }

  it 'does nothing with no patches' do
    expect(runner.run).to eq([])
  end

  context 'with patches' do
    let(:patches) {  Pronto::Git::Repository.new('./spec/data/test').diff('master') }

    it 'returns nothing when no coverage information is present' do
      expect(SimpleCov::ResultMerger).to receive_message_chain(:merged_result, :files).and_return({})
      expect(runner.run).to eq([])
    end

    it 'returns nothing when unchanged lines are uncovered' do
      files = [SimpleCov::SourceFile.new(File.expand_path('spec/data/test/test.rb'), [0, 0, 0, 1, 1, 1, 1, 1, 1])]
      expect(SimpleCov::ResultMerger).to receive_message_chain(:merged_result, :files).and_return(files)
      expect(runner.run).to eq([])
    end

    it 'only creates messages for uncovered lines' do
      files = [SimpleCov::SourceFile.new(File.expand_path('spec/data/test/test.rb'), [1, 1, 1, 1, 1, 1, 0, 1, 1])]
      expect(SimpleCov::ResultMerger).to receive_message_chain(:merged_result, :files).and_return(files)
      expect(runner.run.length).to eq(1)
      expect(runner.run.first.msg).to eq('This change has no test coverage')
    end

    it 'it irgnores empt lines' do
      files = [SimpleCov::SourceFile.new(File.expand_path('spec/data/test/test.rb'), [1, 1, 1, 1, nil, 1, 1, 1, 1])]
      expect(SimpleCov::ResultMerger).to receive_message_chain(:merged_result, :files).and_return(files)
      expect(runner.run).to eq([])
    end
  end
end
