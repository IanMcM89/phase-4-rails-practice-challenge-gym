class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_membership_charges

  def total_membership_charges
    total = []
    self.object.memberships.each do |membership|
      total << membership.charge
    end
    total.sum
  end
end
