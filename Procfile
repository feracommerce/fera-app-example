web: bundle exec puma -t 5:5 -p ${PORT:-3003} -e ${RACK_ENV:-development}
release: bundle exec rake db:migrate
