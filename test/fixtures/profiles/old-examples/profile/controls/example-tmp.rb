# copyright: 2015, Chef Software, Inc.

title '/ profile'

# you add controls here
control 'tmp-1.0' do                                   # A unique ID for this control
  impact 0.7                                           # The criticality, if this control fails.
  title 'Create / directory'                        # A human-readable title
  desc 'An optional description...'                    # Describe why this is needed
  desc 'label', 'An optional description with a label' # Pair a part of the description with a label
  tag data: 'temp data'                                # A tag allows you to associate key information
  tag 'security'                                       # to the test
  ref 'Document A-12', url: 'http://...'               # Additional references

  describe file('/') do                             # The actual test
    it { should be_directory }
  end
end

# you can also use plain tests
describe file('/') do
  it { should be_directory }
end
