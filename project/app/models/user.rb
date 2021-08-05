class User < Sequel::Model
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  plugin :devise
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  Blog.plugin :timestamps, update_on_create: true

  def email_required?
    false
  end

  def email_changed?
    false
  end

  # use this instead of email_changed? for rails >= 5.1
  def will_save_change_to_email?
    false
  end
end
