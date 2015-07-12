module Namecheap
  class Domains < Api
    # Returns a list of domains for the particular user.
    # @see https://www.namecheap.com/support/api/methods/domains/get-list.aspx
    def get_list(options = {})
      get 'domains.getList', options
    end

    # Gets contact information for the requested domain.
    # @see https://www.namecheap.com/support/api/methods/domains/get-contacts.aspx
    def get_contacts(domain, options = {})
      options = {:DomainName => domain}.merge(options)
      get 'domains.getContacts', options
    end

    # Registers a domain.
    # @see https://www.namecheap.com/support/api/methods/domains/create.aspx
    def create(domain, options = {})
      options = {:DomainName => domain}.merge(options)
      post 'domains.create', options
    end

    # Returns a list of tlds.
    # @see https://www.namecheap.com/support/api/methods/domains/get-tld-list.aspx
    def get_tld_list(options = {})
      get 'domains.getTldList', options
    end

    # Sets contact information for the requested domain.
    # @see https://www.namecheap.com/support/api/methods/domains/set-contacts.aspx
    def set_contacts(domain, options = {})
      options = {:DomainName => domain}.merge(options)
      get 'domains.setContacts', options
    end

    # Checks the availability of domains.
    # @see https://www.namecheap.com/support/api/methods/domains/check.aspx
    def check(domains = [], options = {})
      if domains.respond_to?(:join)
        domains = domains.join(',')
      end

      options = {:DomainList => domains}.merge(options)
      get 'domains.check', options
    end

    # Reactivates an expired domain.
    # @see https://www.namecheap.com/support/api/methods/domains/reactivate.aspx
    def reactivate(domain, options = {})
      options = {:DomainName => domain}.merge(options)
      get 'domains.reactivate', options
    end

    # Renews an expiring domain.
    # @see https://www.namecheap.com/support/api/methods/domains/renew.aspx
    def renew(domain, options = {})
      options = {:DomainName => domain}.merge(options)
      get 'domains.renew', options
    end

    # Gets the status of RegistrarLock for the requested domain.
    # @see https://www.namecheap.com/support/api/methods/domains/get-registrar-lock.aspx
    def get_registrar_lock(domain, options = {})
      options = {:DomainName => domain}.merge(options)
      get 'domains.getRegistrarLock', options
    end

    # Sets the RegistrarLock status for a domain.
    # @see https://www.namecheap.com/support/api/methods/domains/set-registrar-lock.aspx
    def set_registrar_lock(domain, options = {})
      options = {:DomainName => domain}.merge(options)
      get 'domains.setRegistrarLock', options
    end

    # Returns information about the requested domain.
    # @see https://www.namecheap.com/support/api/methods/domains/get-info.aspx
    def get_info(domain, options = {})
      options = {:DomainName => domain}.merge(options)
      get 'domains.getInfo', options
    end
  end
end
