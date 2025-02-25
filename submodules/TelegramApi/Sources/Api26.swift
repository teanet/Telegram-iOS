public extension Api.chatlists {
    enum ChatlistUpdates: TypeConstructorDescription {
        case chatlistUpdates(missingPeers: [Api.Peer], chats: [Api.Chat], users: [Api.User])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .chatlistUpdates(let missingPeers, let chats, let users):
                    if boxed {
                        buffer.appendInt32(-1816295539)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(missingPeers.count))
                    for item in missingPeers {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .chatlistUpdates(let missingPeers, let chats, let users):
                return ("chatlistUpdates", [("missingPeers", missingPeers as Any), ("chats", chats as Any), ("users", users as Any)])
    }
    }
    
        public static func parse_chatlistUpdates(_ reader: BufferReader) -> ChatlistUpdates? {
            var _1: [Api.Peer]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Peer.self)
            }
            var _2: [Api.Chat]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _3: [Api.User]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.chatlists.ChatlistUpdates.chatlistUpdates(missingPeers: _1!, chats: _2!, users: _3!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.chatlists {
    enum ExportedChatlistInvite: TypeConstructorDescription {
        case exportedChatlistInvite(filter: Api.DialogFilter, invite: Api.ExportedChatlistInvite)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .exportedChatlistInvite(let filter, let invite):
                    if boxed {
                        buffer.appendInt32(283567014)
                    }
                    filter.serialize(buffer, true)
                    invite.serialize(buffer, true)
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .exportedChatlistInvite(let filter, let invite):
                return ("exportedChatlistInvite", [("filter", filter as Any), ("invite", invite as Any)])
    }
    }
    
        public static func parse_exportedChatlistInvite(_ reader: BufferReader) -> ExportedChatlistInvite? {
            var _1: Api.DialogFilter?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.DialogFilter
            }
            var _2: Api.ExportedChatlistInvite?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.ExportedChatlistInvite
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.chatlists.ExportedChatlistInvite.exportedChatlistInvite(filter: _1!, invite: _2!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.chatlists {
    enum ExportedInvites: TypeConstructorDescription {
        case exportedInvites(invites: [Api.ExportedChatlistInvite], chats: [Api.Chat], users: [Api.User])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .exportedInvites(let invites, let chats, let users):
                    if boxed {
                        buffer.appendInt32(279670215)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(invites.count))
                    for item in invites {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .exportedInvites(let invites, let chats, let users):
                return ("exportedInvites", [("invites", invites as Any), ("chats", chats as Any), ("users", users as Any)])
    }
    }
    
        public static func parse_exportedInvites(_ reader: BufferReader) -> ExportedInvites? {
            var _1: [Api.ExportedChatlistInvite]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.ExportedChatlistInvite.self)
            }
            var _2: [Api.Chat]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _3: [Api.User]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.chatlists.ExportedInvites.exportedInvites(invites: _1!, chats: _2!, users: _3!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.contacts {
    enum Blocked: TypeConstructorDescription {
        case blocked(blocked: [Api.PeerBlocked], chats: [Api.Chat], users: [Api.User])
        case blockedSlice(count: Int32, blocked: [Api.PeerBlocked], chats: [Api.Chat], users: [Api.User])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .blocked(let blocked, let chats, let users):
                    if boxed {
                        buffer.appendInt32(182326673)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(blocked.count))
                    for item in blocked {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
                case .blockedSlice(let count, let blocked, let chats, let users):
                    if boxed {
                        buffer.appendInt32(-513392236)
                    }
                    serializeInt32(count, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(blocked.count))
                    for item in blocked {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .blocked(let blocked, let chats, let users):
                return ("blocked", [("blocked", blocked as Any), ("chats", chats as Any), ("users", users as Any)])
                case .blockedSlice(let count, let blocked, let chats, let users):
                return ("blockedSlice", [("count", count as Any), ("blocked", blocked as Any), ("chats", chats as Any), ("users", users as Any)])
    }
    }
    
        public static func parse_blocked(_ reader: BufferReader) -> Blocked? {
            var _1: [Api.PeerBlocked]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.PeerBlocked.self)
            }
            var _2: [Api.Chat]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _3: [Api.User]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.contacts.Blocked.blocked(blocked: _1!, chats: _2!, users: _3!)
            }
            else {
                return nil
            }
        }
        public static func parse_blockedSlice(_ reader: BufferReader) -> Blocked? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: [Api.PeerBlocked]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.PeerBlocked.self)
            }
            var _3: [Api.Chat]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _4: [Api.User]?
            if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.contacts.Blocked.blockedSlice(count: _1!, blocked: _2!, chats: _3!, users: _4!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.contacts {
    enum Contacts: TypeConstructorDescription {
        case contacts(contacts: [Api.Contact], savedCount: Int32, users: [Api.User])
        case contactsNotModified
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .contacts(let contacts, let savedCount, let users):
                    if boxed {
                        buffer.appendInt32(-353862078)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(contacts.count))
                    for item in contacts {
                        item.serialize(buffer, true)
                    }
                    serializeInt32(savedCount, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
                case .contactsNotModified:
                    if boxed {
                        buffer.appendInt32(-1219778094)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .contacts(let contacts, let savedCount, let users):
                return ("contacts", [("contacts", contacts as Any), ("savedCount", savedCount as Any), ("users", users as Any)])
                case .contactsNotModified:
                return ("contactsNotModified", [])
    }
    }
    
        public static func parse_contacts(_ reader: BufferReader) -> Contacts? {
            var _1: [Api.Contact]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Contact.self)
            }
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: [Api.User]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.contacts.Contacts.contacts(contacts: _1!, savedCount: _2!, users: _3!)
            }
            else {
                return nil
            }
        }
        public static func parse_contactsNotModified(_ reader: BufferReader) -> Contacts? {
            return Api.contacts.Contacts.contactsNotModified
        }
    
    }
}
public extension Api.contacts {
    enum Found: TypeConstructorDescription {
        case found(myResults: [Api.Peer], results: [Api.Peer], chats: [Api.Chat], users: [Api.User])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .found(let myResults, let results, let chats, let users):
                    if boxed {
                        buffer.appendInt32(-1290580579)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(myResults.count))
                    for item in myResults {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(results.count))
                    for item in results {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .found(let myResults, let results, let chats, let users):
                return ("found", [("myResults", myResults as Any), ("results", results as Any), ("chats", chats as Any), ("users", users as Any)])
    }
    }
    
        public static func parse_found(_ reader: BufferReader) -> Found? {
            var _1: [Api.Peer]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Peer.self)
            }
            var _2: [Api.Peer]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Peer.self)
            }
            var _3: [Api.Chat]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _4: [Api.User]?
            if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.contacts.Found.found(myResults: _1!, results: _2!, chats: _3!, users: _4!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.contacts {
    enum ImportedContacts: TypeConstructorDescription {
        case importedContacts(imported: [Api.ImportedContact], popularInvites: [Api.PopularContact], retryContacts: [Int64], users: [Api.User])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .importedContacts(let imported, let popularInvites, let retryContacts, let users):
                    if boxed {
                        buffer.appendInt32(2010127419)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(imported.count))
                    for item in imported {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(popularInvites.count))
                    for item in popularInvites {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(retryContacts.count))
                    for item in retryContacts {
                        serializeInt64(item, buffer: buffer, boxed: false)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .importedContacts(let imported, let popularInvites, let retryContacts, let users):
                return ("importedContacts", [("imported", imported as Any), ("popularInvites", popularInvites as Any), ("retryContacts", retryContacts as Any), ("users", users as Any)])
    }
    }
    
        public static func parse_importedContacts(_ reader: BufferReader) -> ImportedContacts? {
            var _1: [Api.ImportedContact]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.ImportedContact.self)
            }
            var _2: [Api.PopularContact]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.PopularContact.self)
            }
            var _3: [Int64]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 570911930, elementType: Int64.self)
            }
            var _4: [Api.User]?
            if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.contacts.ImportedContacts.importedContacts(imported: _1!, popularInvites: _2!, retryContacts: _3!, users: _4!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.contacts {
    enum ResolvedPeer: TypeConstructorDescription {
        case resolvedPeer(peer: Api.Peer, chats: [Api.Chat], users: [Api.User])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .resolvedPeer(let peer, let chats, let users):
                    if boxed {
                        buffer.appendInt32(2131196633)
                    }
                    peer.serialize(buffer, true)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .resolvedPeer(let peer, let chats, let users):
                return ("resolvedPeer", [("peer", peer as Any), ("chats", chats as Any), ("users", users as Any)])
    }
    }
    
        public static func parse_resolvedPeer(_ reader: BufferReader) -> ResolvedPeer? {
            var _1: Api.Peer?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.Peer
            }
            var _2: [Api.Chat]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _3: [Api.User]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.contacts.ResolvedPeer.resolvedPeer(peer: _1!, chats: _2!, users: _3!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.contacts {
    enum TopPeers: TypeConstructorDescription {
        case topPeers(categories: [Api.TopPeerCategoryPeers], chats: [Api.Chat], users: [Api.User])
        case topPeersDisabled
        case topPeersNotModified
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .topPeers(let categories, let chats, let users):
                    if boxed {
                        buffer.appendInt32(1891070632)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(categories.count))
                    for item in categories {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
                case .topPeersDisabled:
                    if boxed {
                        buffer.appendInt32(-1255369827)
                    }
                    
                    break
                case .topPeersNotModified:
                    if boxed {
                        buffer.appendInt32(-567906571)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .topPeers(let categories, let chats, let users):
                return ("topPeers", [("categories", categories as Any), ("chats", chats as Any), ("users", users as Any)])
                case .topPeersDisabled:
                return ("topPeersDisabled", [])
                case .topPeersNotModified:
                return ("topPeersNotModified", [])
    }
    }
    
        public static func parse_topPeers(_ reader: BufferReader) -> TopPeers? {
            var _1: [Api.TopPeerCategoryPeers]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.TopPeerCategoryPeers.self)
            }
            var _2: [Api.Chat]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Chat.self)
            }
            var _3: [Api.User]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.contacts.TopPeers.topPeers(categories: _1!, chats: _2!, users: _3!)
            }
            else {
                return nil
            }
        }
        public static func parse_topPeersDisabled(_ reader: BufferReader) -> TopPeers? {
            return Api.contacts.TopPeers.topPeersDisabled
        }
        public static func parse_topPeersNotModified(_ reader: BufferReader) -> TopPeers? {
            return Api.contacts.TopPeers.topPeersNotModified
        }
    
    }
}
public extension Api.help {
    enum AppConfig: TypeConstructorDescription {
        case appConfig(hash: Int32, config: Api.JSONValue)
        case appConfigNotModified
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .appConfig(let hash, let config):
                    if boxed {
                        buffer.appendInt32(-585598930)
                    }
                    serializeInt32(hash, buffer: buffer, boxed: false)
                    config.serialize(buffer, true)
                    break
                case .appConfigNotModified:
                    if boxed {
                        buffer.appendInt32(2094949405)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .appConfig(let hash, let config):
                return ("appConfig", [("hash", hash as Any), ("config", config as Any)])
                case .appConfigNotModified:
                return ("appConfigNotModified", [])
    }
    }
    
        public static func parse_appConfig(_ reader: BufferReader) -> AppConfig? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.JSONValue?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.JSONValue
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.help.AppConfig.appConfig(hash: _1!, config: _2!)
            }
            else {
                return nil
            }
        }
        public static func parse_appConfigNotModified(_ reader: BufferReader) -> AppConfig? {
            return Api.help.AppConfig.appConfigNotModified
        }
    
    }
}
public extension Api.help {
    enum AppUpdate: TypeConstructorDescription {
        case appUpdate(flags: Int32, id: Int32, version: String, text: String, entities: [Api.MessageEntity], document: Api.Document?, url: String?, sticker: Api.Document?)
        case noAppUpdate
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .appUpdate(let flags, let id, let version, let text, let entities, let document, let url, let sticker):
                    if boxed {
                        buffer.appendInt32(-860107216)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(id, buffer: buffer, boxed: false)
                    serializeString(version, buffer: buffer, boxed: false)
                    serializeString(text, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities.count))
                    for item in entities {
                        item.serialize(buffer, true)
                    }
                    if Int(flags) & Int(1 << 1) != 0 {document!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 2) != 0 {serializeString(url!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 3) != 0 {sticker!.serialize(buffer, true)}
                    break
                case .noAppUpdate:
                    if boxed {
                        buffer.appendInt32(-1000708810)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .appUpdate(let flags, let id, let version, let text, let entities, let document, let url, let sticker):
                return ("appUpdate", [("flags", flags as Any), ("id", id as Any), ("version", version as Any), ("text", text as Any), ("entities", entities as Any), ("document", document as Any), ("url", url as Any), ("sticker", sticker as Any)])
                case .noAppUpdate:
                return ("noAppUpdate", [])
    }
    }
    
        public static func parse_appUpdate(_ reader: BufferReader) -> AppUpdate? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            _4 = parseString(reader)
            var _5: [Api.MessageEntity]?
            if let _ = reader.readInt32() {
                _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessageEntity.self)
            }
            var _6: Api.Document?
            if Int(_1!) & Int(1 << 1) != 0 {if let signature = reader.readInt32() {
                _6 = Api.parse(reader, signature: signature) as? Api.Document
            } }
            var _7: String?
            if Int(_1!) & Int(1 << 2) != 0 {_7 = parseString(reader) }
            var _8: Api.Document?
            if Int(_1!) & Int(1 << 3) != 0 {if let signature = reader.readInt32() {
                _8 = Api.parse(reader, signature: signature) as? Api.Document
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = (Int(_1!) & Int(1 << 1) == 0) || _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 2) == 0) || _7 != nil
            let _c8 = (Int(_1!) & Int(1 << 3) == 0) || _8 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 {
                return Api.help.AppUpdate.appUpdate(flags: _1!, id: _2!, version: _3!, text: _4!, entities: _5!, document: _6, url: _7, sticker: _8)
            }
            else {
                return nil
            }
        }
        public static func parse_noAppUpdate(_ reader: BufferReader) -> AppUpdate? {
            return Api.help.AppUpdate.noAppUpdate
        }
    
    }
}
public extension Api.help {
    enum CountriesList: TypeConstructorDescription {
        case countriesList(countries: [Api.help.Country], hash: Int32)
        case countriesListNotModified
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .countriesList(let countries, let hash):
                    if boxed {
                        buffer.appendInt32(-2016381538)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(countries.count))
                    for item in countries {
                        item.serialize(buffer, true)
                    }
                    serializeInt32(hash, buffer: buffer, boxed: false)
                    break
                case .countriesListNotModified:
                    if boxed {
                        buffer.appendInt32(-1815339214)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .countriesList(let countries, let hash):
                return ("countriesList", [("countries", countries as Any), ("hash", hash as Any)])
                case .countriesListNotModified:
                return ("countriesListNotModified", [])
    }
    }
    
        public static func parse_countriesList(_ reader: BufferReader) -> CountriesList? {
            var _1: [Api.help.Country]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.help.Country.self)
            }
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.help.CountriesList.countriesList(countries: _1!, hash: _2!)
            }
            else {
                return nil
            }
        }
        public static func parse_countriesListNotModified(_ reader: BufferReader) -> CountriesList? {
            return Api.help.CountriesList.countriesListNotModified
        }
    
    }
}
public extension Api.help {
    enum Country: TypeConstructorDescription {
        case country(flags: Int32, iso2: String, defaultName: String, name: String?, countryCodes: [Api.help.CountryCode])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .country(let flags, let iso2, let defaultName, let name, let countryCodes):
                    if boxed {
                        buffer.appendInt32(-1014526429)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(iso2, buffer: buffer, boxed: false)
                    serializeString(defaultName, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {serializeString(name!, buffer: buffer, boxed: false)}
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(countryCodes.count))
                    for item in countryCodes {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .country(let flags, let iso2, let defaultName, let name, let countryCodes):
                return ("country", [("flags", flags as Any), ("iso2", iso2 as Any), ("defaultName", defaultName as Any), ("name", name as Any), ("countryCodes", countryCodes as Any)])
    }
    }
    
        public static func parse_country(_ reader: BufferReader) -> Country? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: String?
            _3 = parseString(reader)
            var _4: String?
            if Int(_1!) & Int(1 << 1) != 0 {_4 = parseString(reader) }
            var _5: [Api.help.CountryCode]?
            if let _ = reader.readInt32() {
                _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.help.CountryCode.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 1) == 0) || _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.help.Country.country(flags: _1!, iso2: _2!, defaultName: _3!, name: _4, countryCodes: _5!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.help {
    enum CountryCode: TypeConstructorDescription {
        case countryCode(flags: Int32, countryCode: String, prefixes: [String]?, patterns: [String]?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .countryCode(let flags, let countryCode, let prefixes, let patterns):
                    if boxed {
                        buffer.appendInt32(1107543535)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(countryCode, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(prefixes!.count))
                    for item in prefixes! {
                        serializeString(item, buffer: buffer, boxed: false)
                    }}
                    if Int(flags) & Int(1 << 1) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(patterns!.count))
                    for item in patterns! {
                        serializeString(item, buffer: buffer, boxed: false)
                    }}
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .countryCode(let flags, let countryCode, let prefixes, let patterns):
                return ("countryCode", [("flags", flags as Any), ("countryCode", countryCode as Any), ("prefixes", prefixes as Any), ("patterns", patterns as Any)])
    }
    }
    
        public static func parse_countryCode(_ reader: BufferReader) -> CountryCode? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: [String]?
            if Int(_1!) & Int(1 << 0) != 0 {if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: -1255641564, elementType: String.self)
            } }
            var _4: [String]?
            if Int(_1!) & Int(1 << 1) != 0 {if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: -1255641564, elementType: String.self)
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 0) == 0) || _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 1) == 0) || _4 != nil
            if _c1 && _c2 && _c3 && _c4 {
                return Api.help.CountryCode.countryCode(flags: _1!, countryCode: _2!, prefixes: _3, patterns: _4)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.help {
    enum DeepLinkInfo: TypeConstructorDescription {
        case deepLinkInfo(flags: Int32, message: String, entities: [Api.MessageEntity]?)
        case deepLinkInfoEmpty
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .deepLinkInfo(let flags, let message, let entities):
                    if boxed {
                        buffer.appendInt32(1783556146)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeString(message, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        item.serialize(buffer, true)
                    }}
                    break
                case .deepLinkInfoEmpty:
                    if boxed {
                        buffer.appendInt32(1722786150)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .deepLinkInfo(let flags, let message, let entities):
                return ("deepLinkInfo", [("flags", flags as Any), ("message", message as Any), ("entities", entities as Any)])
                case .deepLinkInfoEmpty:
                return ("deepLinkInfoEmpty", [])
    }
    }
    
        public static func parse_deepLinkInfo(_ reader: BufferReader) -> DeepLinkInfo? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: String?
            _2 = parseString(reader)
            var _3: [Api.MessageEntity]?
            if Int(_1!) & Int(1 << 1) != 0 {if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessageEntity.self)
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 1) == 0) || _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.help.DeepLinkInfo.deepLinkInfo(flags: _1!, message: _2!, entities: _3)
            }
            else {
                return nil
            }
        }
        public static func parse_deepLinkInfoEmpty(_ reader: BufferReader) -> DeepLinkInfo? {
            return Api.help.DeepLinkInfo.deepLinkInfoEmpty
        }
    
    }
}
public extension Api.help {
    enum InviteText: TypeConstructorDescription {
        case inviteText(message: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .inviteText(let message):
                    if boxed {
                        buffer.appendInt32(415997816)
                    }
                    serializeString(message, buffer: buffer, boxed: false)
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .inviteText(let message):
                return ("inviteText", [("message", message as Any)])
    }
    }
    
        public static func parse_inviteText(_ reader: BufferReader) -> InviteText? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.help.InviteText.inviteText(message: _1!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.help {
    enum PassportConfig: TypeConstructorDescription {
        case passportConfig(hash: Int32, countriesLangs: Api.DataJSON)
        case passportConfigNotModified
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .passportConfig(let hash, let countriesLangs):
                    if boxed {
                        buffer.appendInt32(-1600596305)
                    }
                    serializeInt32(hash, buffer: buffer, boxed: false)
                    countriesLangs.serialize(buffer, true)
                    break
                case .passportConfigNotModified:
                    if boxed {
                        buffer.appendInt32(-1078332329)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .passportConfig(let hash, let countriesLangs):
                return ("passportConfig", [("hash", hash as Any), ("countriesLangs", countriesLangs as Any)])
                case .passportConfigNotModified:
                return ("passportConfigNotModified", [])
    }
    }
    
        public static func parse_passportConfig(_ reader: BufferReader) -> PassportConfig? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.DataJSON?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.DataJSON
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.help.PassportConfig.passportConfig(hash: _1!, countriesLangs: _2!)
            }
            else {
                return nil
            }
        }
        public static func parse_passportConfigNotModified(_ reader: BufferReader) -> PassportConfig? {
            return Api.help.PassportConfig.passportConfigNotModified
        }
    
    }
}
public extension Api.help {
    enum PeerColorOption: TypeConstructorDescription {
        case peerColorOption(flags: Int32, colorId: Int32, colors: Api.help.PeerColorSet?, darkColors: Api.help.PeerColorSet?, channelMinLevel: Int32?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .peerColorOption(let flags, let colorId, let colors, let darkColors, let channelMinLevel):
                    if boxed {
                        buffer.appendInt32(-276549461)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(colorId, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 1) != 0 {colors!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 2) != 0 {darkColors!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 3) != 0 {serializeInt32(channelMinLevel!, buffer: buffer, boxed: false)}
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .peerColorOption(let flags, let colorId, let colors, let darkColors, let channelMinLevel):
                return ("peerColorOption", [("flags", flags as Any), ("colorId", colorId as Any), ("colors", colors as Any), ("darkColors", darkColors as Any), ("channelMinLevel", channelMinLevel as Any)])
    }
    }
    
        public static func parse_peerColorOption(_ reader: BufferReader) -> PeerColorOption? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Api.help.PeerColorSet?
            if Int(_1!) & Int(1 << 1) != 0 {if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.help.PeerColorSet
            } }
            var _4: Api.help.PeerColorSet?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.help.PeerColorSet
            } }
            var _5: Int32?
            if Int(_1!) & Int(1 << 3) != 0 {_5 = reader.readInt32() }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 1) == 0) || _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 2) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 3) == 0) || _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.help.PeerColorOption.peerColorOption(flags: _1!, colorId: _2!, colors: _3, darkColors: _4, channelMinLevel: _5)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.help {
    enum PeerColorSet: TypeConstructorDescription {
        case peerColorProfileSet(paletteColors: [Int32], bgColors: [Int32], storyColors: [Int32])
        case peerColorSet(colors: [Int32])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .peerColorProfileSet(let paletteColors, let bgColors, let storyColors):
                    if boxed {
                        buffer.appendInt32(1987928555)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(paletteColors.count))
                    for item in paletteColors {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(bgColors.count))
                    for item in bgColors {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(storyColors.count))
                    for item in storyColors {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    break
                case .peerColorSet(let colors):
                    if boxed {
                        buffer.appendInt32(639736408)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(colors.count))
                    for item in colors {
                        serializeInt32(item, buffer: buffer, boxed: false)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .peerColorProfileSet(let paletteColors, let bgColors, let storyColors):
                return ("peerColorProfileSet", [("paletteColors", paletteColors as Any), ("bgColors", bgColors as Any), ("storyColors", storyColors as Any)])
                case .peerColorSet(let colors):
                return ("peerColorSet", [("colors", colors as Any)])
    }
    }
    
        public static func parse_peerColorProfileSet(_ reader: BufferReader) -> PeerColorSet? {
            var _1: [Int32]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            var _2: [Int32]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            var _3: [Int32]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            if _c1 && _c2 && _c3 {
                return Api.help.PeerColorSet.peerColorProfileSet(paletteColors: _1!, bgColors: _2!, storyColors: _3!)
            }
            else {
                return nil
            }
        }
        public static func parse_peerColorSet(_ reader: BufferReader) -> PeerColorSet? {
            var _1: [Int32]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: -1471112230, elementType: Int32.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.help.PeerColorSet.peerColorSet(colors: _1!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api.help {
    enum PeerColors: TypeConstructorDescription {
        case peerColors(hash: Int32, colors: [Api.help.PeerColorOption])
        case peerColorsNotModified
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .peerColors(let hash, let colors):
                    if boxed {
                        buffer.appendInt32(16313608)
                    }
                    serializeInt32(hash, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(colors.count))
                    for item in colors {
                        item.serialize(buffer, true)
                    }
                    break
                case .peerColorsNotModified:
                    if boxed {
                        buffer.appendInt32(732034510)
                    }
                    
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .peerColors(let hash, let colors):
                return ("peerColors", [("hash", hash as Any), ("colors", colors as Any)])
                case .peerColorsNotModified:
                return ("peerColorsNotModified", [])
    }
    }
    
        public static func parse_peerColors(_ reader: BufferReader) -> PeerColors? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: [Api.help.PeerColorOption]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.help.PeerColorOption.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.help.PeerColors.peerColors(hash: _1!, colors: _2!)
            }
            else {
                return nil
            }
        }
        public static func parse_peerColorsNotModified(_ reader: BufferReader) -> PeerColors? {
            return Api.help.PeerColors.peerColorsNotModified
        }
    
    }
}
public extension Api.help {
    enum PremiumPromo: TypeConstructorDescription {
        case premiumPromo(statusText: String, statusEntities: [Api.MessageEntity], videoSections: [String], videos: [Api.Document], periodOptions: [Api.PremiumSubscriptionOption], users: [Api.User])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .premiumPromo(let statusText, let statusEntities, let videoSections, let videos, let periodOptions, let users):
                    if boxed {
                        buffer.appendInt32(1395946908)
                    }
                    serializeString(statusText, buffer: buffer, boxed: false)
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(statusEntities.count))
                    for item in statusEntities {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(videoSections.count))
                    for item in videoSections {
                        serializeString(item, buffer: buffer, boxed: false)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(videos.count))
                    for item in videos {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(periodOptions.count))
                    for item in periodOptions {
                        item.serialize(buffer, true)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .premiumPromo(let statusText, let statusEntities, let videoSections, let videos, let periodOptions, let users):
                return ("premiumPromo", [("statusText", statusText as Any), ("statusEntities", statusEntities as Any), ("videoSections", videoSections as Any), ("videos", videos as Any), ("periodOptions", periodOptions as Any), ("users", users as Any)])
    }
    }
    
        public static func parse_premiumPromo(_ reader: BufferReader) -> PremiumPromo? {
            var _1: String?
            _1 = parseString(reader)
            var _2: [Api.MessageEntity]?
            if let _ = reader.readInt32() {
                _2 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessageEntity.self)
            }
            var _3: [String]?
            if let _ = reader.readInt32() {
                _3 = Api.parseVector(reader, elementSignature: -1255641564, elementType: String.self)
            }
            var _4: [Api.Document]?
            if let _ = reader.readInt32() {
                _4 = Api.parseVector(reader, elementSignature: 0, elementType: Api.Document.self)
            }
            var _5: [Api.PremiumSubscriptionOption]?
            if let _ = reader.readInt32() {
                _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.PremiumSubscriptionOption.self)
            }
            var _6: [Api.User]?
            if let _ = reader.readInt32() {
                _6 = Api.parseVector(reader, elementSignature: 0, elementType: Api.User.self)
            }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            let _c6 = _6 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 {
                return Api.help.PremiumPromo.premiumPromo(statusText: _1!, statusEntities: _2!, videoSections: _3!, videos: _4!, periodOptions: _5!, users: _6!)
            }
            else {
                return nil
            }
        }
    
    }
}
