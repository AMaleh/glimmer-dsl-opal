require 'spec_helper'

require 'lib/glimmer-dsl-opal/ext/file_ext'

class FileExtSubject
  class << self
    # these methods are defined because they are needed by FileExt
  
    def expand_path_without_glimmer(file, base=nil)
      File.join(base, file)
    end
    
    def join_without_glimmer(*paths)
      File.join(*paths)
    end
    
    include FileExt
  end
end

RSpec.describe FileExt do
  let(:carey_web_image_path) {
    '/assets/players/carey.png'
  }
  let(:image_paths) {
    [carey_web_image_path]
  }

  let(:empty_image_paths) {
    []
  }
  
  before do
    allow(FileExtSubject).to receive(:get_image_paths)
  end
  
  describe '::expand_path' do
    it 'matches to image_paths from the web and returns the matching web image path' do
      allow(FileExtSubject).to receive(:image_paths).and_return(image_paths)
      
      result_path = FileExtSubject.expand_path('players/carey.png', '(dir)')
      
      expect(result_path).to eq(carey_web_image_path)
    end
    
    it 'matches to image_paths from the web despite containing .. or . and returns the matching web image path' do
      allow(FileExtSubject).to receive(:image_paths).and_return(image_paths)
      
      result_path = FileExtSubject.expand_path('./players/../carey.png', '(dir)')
      
      expect(result_path).to eq(carey_web_image_path)
    end
    
    it 'fails to match to image_paths from the web and returns the matching web image path' do
      allow(FileExtSubject).to receive(:image_paths).and_return(empty_image_paths)
      
      result_path = FileExtSubject.expand_path('players/carey.png', '(dir)')
      
      expect(result_path).to_not eq(carey_web_image_path)
      expect(result_path).to eq('')
    end
    
    it 'fails to match to image_paths from the web due to not having any identifiable path segments' do
      allow(FileExtSubject).to receive(:image_paths).and_return(image_paths)
      
      result_path = FileExtSubject.expand_path('./..', '(dir)')
      
      expect(result_path).to_not eq(carey_web_image_path)
      expect(result_path).to eq('')
    end
  end
  
  describe '::join' do
    it 'matches to image_paths from the web and returns the matching web image path' do
      allow(FileExtSubject).to receive(:image_paths).and_return(image_paths)
      
      result_path = FileExtSubject.join('players', 'carey.png')
      
      expect(result_path).to eq(carey_web_image_path)
    end
    
    xit 'matches to image_paths from the web despite containing .. or . and returns the matching web image path' do
      allow(FileExtSubject).to receive(:image_paths).and_return(image_paths)
      
      result_path = FileExtSubject.expand_path('./players/../carey.png', '(dir)')
      
      expect(result_path).to eq(carey_web_image_path)
    end
    
    xit 'fails to match to image_paths from the web and returns the matching web image path' do
      allow(FileExtSubject).to receive(:image_paths).and_return(empty_image_paths)
      
      result_path = FileExtSubject.expand_path('players/carey.png', '(dir)')
      
      expect(result_path).to_not eq(carey_web_image_path)
      expect(result_path).to eq(File.expand_path('players/carey.png', '(dir)'))
    end
    
    xit 'fails to match to image_paths from the web due to not having any identifiable path segments' do
      allow(FileExtSubject).to receive(:image_paths).and_return(image_paths)
      
      result_path = FileExtSubject.expand_path('./..', '(dir)')
      
      expect(result_path).to_not eq(carey_web_image_path)
      expect(result_path).to eq('')
    end
  end
end
