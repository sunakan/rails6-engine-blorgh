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
    task :compile: [:yarn_install, :environment] do
      Webpacker.with_node_env("production") do
        if BlogEngine.webpacker.commands.compile
          # 成功時の処理
        else
          # 失敗時の処理
          exit!
        end
      end
    end
  end
end
