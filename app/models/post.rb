class Post < ActiveRecord::Base
  def mimetype
    if medialink.present?
      case medialink
      when /\.mp3$/ then 'audio/mpeg'
      when /\.m4a$/ then 'audio/aac'
      when /\.ogg$/ then 'audio/ogg'
      when /\.mid$|\.midi/ then 'audio/midi'
      when /\.ra$/ then 'audio/vnd.rn-realaudio'
      when /\.wav$/ then 'audio/wav'
      end
    end
  end
end
