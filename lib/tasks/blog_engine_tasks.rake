require "fileutils"

namespace :blog_engine do
  namespace :webpacker do
    desc "yarnを利用して、依存パッケージをインストール"
    task :yarn_install do
      Dir.chdir(File.join(__dir__, "../..")) do
        system "yarn install --no-progress --production"
      end
    end

    # rake blog_engine:webpacker:compile
    desc "webpackを利用して、digests付きで管理下にあるファイル群をコンパイル"
    task compile: [:yarn_install, :environment] do
      Webpacker.with_node_env("production") do
        # TODO: ここでcpでRails.rootのpublicにcpしているが、もっとスマートなやり方があると思われる
        if BlogEngine.webpacker.commands.compile
          puts "compiled: #{BlogEngine.webpacker.config.public_output_path}"
          src  = BlogEngine.webpacker.config.public_output_path
          dest = "#{Rails.root}/public/#{src.basename}"
          FileUtils.rm_rf(dest.to_s)
          FileUtils.cp_r(src.to_s, dest.to_s)
          puts "copied #{src.to_s} => #{dest.to_s}"
        else
          puts "失敗..."
          # 失敗時の処理
          exit!
        end
      end
    end
  end
end
