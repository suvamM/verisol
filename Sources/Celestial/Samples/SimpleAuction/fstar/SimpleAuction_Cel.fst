(*Code generated by compiler*)

module SimpleAuction_Cel

open FStar.Celestial
open FStar.Celestial.Effect
module CM = FStar.Celestial.ContractsMap
open FStar.Mul
module M = FStar.Celestial.Map
module L = FStar.List.Tot
module A = FStar.Celestial.Array

assume val simpleauction_cel_HighestBidIncreased : string
assume val simpleauction_cel_AuctionEnded : string

noeq type t_simpleauction_cel = {
  simpleauction_cel_beneficiary : address;
  simpleauction_cel_auctionEndTime : uint;
  simpleauction_cel_highestBidder : address;
  simpleauction_cel_highestBid : uint;
  simpleauction_cel_pendingReturns : (m:(M.t address uint lt){M.def_of m == 0});
  simpleauction_cel_ended : bool;
  simpleauction_cel_totalReturns : uint;
}

(* Contract address type, liveness, and field range macros *)

type simpleauction_cel_address = contract t_simpleauction_cel
let simpleauction_cel_live (c:simpleauction_cel_address) (bst:bstate) =
  c `CM.live_in` bst.cmap

(* Field getters for contract SimpleAuction_Cel *)

let simpleauction_cel_get_beneficiary (c:simpleauction_cel_address)
: StEth address
  (fun st -> c `simpleauction_cel_live` st.current)
  (fun st0 r st1 ->
    st0 == st1 /\ r == (CM.sel c st0.current.cmap).simpleauction_cel_beneficiary)
= let simpleauction_cel_inst = get_contract c in
  simpleauction_cel_inst.simpleauction_cel_beneficiary

let simpleauction_cel_get_auctionEndTime (c:simpleauction_cel_address)
: StEth uint
  (fun st -> c `simpleauction_cel_live` st.current)
  (fun st0 r st1 ->
    st0 == st1 /\ r == (CM.sel c st0.current.cmap).simpleauction_cel_auctionEndTime)
= let simpleauction_cel_inst = get_contract c in
  simpleauction_cel_inst.simpleauction_cel_auctionEndTime

let simpleauction_cel_get_highestBidder (c:simpleauction_cel_address)
: StEth address
  (fun st -> c `simpleauction_cel_live` st.current)
  (fun st0 r st1 ->
    st0 == st1 /\ r == (CM.sel c st0.current.cmap).simpleauction_cel_highestBidder)
= let simpleauction_cel_inst = get_contract c in
  simpleauction_cel_inst.simpleauction_cel_highestBidder

let simpleauction_cel_get_highestBid (c:simpleauction_cel_address)
: StEth uint
  (fun st -> c `simpleauction_cel_live` st.current)
  (fun st0 r st1 ->
    st0 == st1 /\ r == (CM.sel c st0.current.cmap).simpleauction_cel_highestBid)
= let simpleauction_cel_inst = get_contract c in
  simpleauction_cel_inst.simpleauction_cel_highestBid

let simpleauction_cel_get_pendingReturns (c:simpleauction_cel_address)
: StEth (m:(M.t address uint lt){M.def_of m == 0})
  (fun st -> c `simpleauction_cel_live` st.current)
  (fun st0 r st1 ->
    st0 == st1 /\ r == (CM.sel c st0.current.cmap).simpleauction_cel_pendingReturns)
= let simpleauction_cel_inst = get_contract c in
  simpleauction_cel_inst.simpleauction_cel_pendingReturns

let simpleauction_cel_get_ended (c:simpleauction_cel_address)
: StEth bool
  (fun st -> c `simpleauction_cel_live` st.current)
  (fun st0 r st1 ->
    st0 == st1 /\ r == (CM.sel c st0.current.cmap).simpleauction_cel_ended)
= let simpleauction_cel_inst = get_contract c in
  simpleauction_cel_inst.simpleauction_cel_ended

let simpleauction_cel_get_totalReturns (c:simpleauction_cel_address)
: StEth uint
  (fun st -> c `simpleauction_cel_live` st.current)
  (fun st0 r st1 ->
    st0 == st1 /\ r == (CM.sel c st0.current.cmap).simpleauction_cel_totalReturns)
= let simpleauction_cel_inst = get_contract c in
  simpleauction_cel_inst.simpleauction_cel_totalReturns

(* Field setters for contract SimpleAuction_Cel *)

let simpleauction_cel_set_beneficiary (c:simpleauction_cel_address) (_beneficiary:address)
: StEth unit
  (fun st -> c `simpleauction_cel_live` st.current)
  (fun st0 _ st1 ->
    modifies_cmap_only (Set.singleton c) st0.current st1.current /\
    simpleauction_cel_live c st1.current /\
    (let instance0 = CM.sel c st0.current.cmap in
     let instance1 = CM.sel c st1.current.cmap in
    instance1 == { instance0 with simpleauction_cel_beneficiary = _beneficiary }))
= let simpleauction_cel_inst = get_contract c in
  let simpleauction_cel_inst = { simpleauction_cel_inst with simpleauction_cel_beneficiary = _beneficiary } in
  set_contract c simpleauction_cel_inst

let simpleauction_cel_set_auctionEndTime (c:simpleauction_cel_address) (_auctionEndTime:uint)
: StEth unit
  (fun st -> c `simpleauction_cel_live` st.current
              /\ _auctionEndTime >= 0 /\ _auctionEndTime <= uint_max)
  (fun st0 _ st1 ->
    modifies_cmap_only (Set.singleton c) st0.current st1.current /\
    simpleauction_cel_live c st1.current /\
    (let instance0 = CM.sel c st0.current.cmap in
     let instance1 = CM.sel c st1.current.cmap in
    instance1 == { instance0 with simpleauction_cel_auctionEndTime = _auctionEndTime }))
= let simpleauction_cel_inst = get_contract c in
  let simpleauction_cel_inst = { simpleauction_cel_inst with simpleauction_cel_auctionEndTime = _auctionEndTime } in
  set_contract c simpleauction_cel_inst

let simpleauction_cel_set_highestBidder (c:simpleauction_cel_address) (_highestBidder:address)
: StEth unit
  (fun st -> c `simpleauction_cel_live` st.current)
  (fun st0 _ st1 ->
    modifies_cmap_only (Set.singleton c) st0.current st1.current /\
    simpleauction_cel_live c st1.current /\
    (let instance0 = CM.sel c st0.current.cmap in
     let instance1 = CM.sel c st1.current.cmap in
    instance1 == { instance0 with simpleauction_cel_highestBidder = _highestBidder }))
= let simpleauction_cel_inst = get_contract c in
  let simpleauction_cel_inst = { simpleauction_cel_inst with simpleauction_cel_highestBidder = _highestBidder } in
  set_contract c simpleauction_cel_inst

let simpleauction_cel_set_highestBid (c:simpleauction_cel_address) (_highestBid:uint)
: StEth unit
  (fun st -> c `simpleauction_cel_live` st.current
              /\ _highestBid >= 0 /\ _highestBid <= uint_max)
  (fun st0 _ st1 ->
    modifies_cmap_only (Set.singleton c) st0.current st1.current /\
    simpleauction_cel_live c st1.current /\
    (let instance0 = CM.sel c st0.current.cmap in
     let instance1 = CM.sel c st1.current.cmap in
    instance1 == { instance0 with simpleauction_cel_highestBid = _highestBid }))
= let simpleauction_cel_inst = get_contract c in
  let simpleauction_cel_inst = { simpleauction_cel_inst with simpleauction_cel_highestBid = _highestBid } in
  set_contract c simpleauction_cel_inst

let simpleauction_cel_set_pendingReturns (c:simpleauction_cel_address) (_pendingReturns:(m:(M.t address uint lt){M.def_of m == 0}))
: StEth unit
  (fun st -> c `simpleauction_cel_live` st.current)
  (fun st0 _ st1 ->
    modifies_cmap_only (Set.singleton c) st0.current st1.current /\
    simpleauction_cel_live c st1.current /\
    (let instance0 = CM.sel c st0.current.cmap in
     let instance1 = CM.sel c st1.current.cmap in
    instance1 == { instance0 with simpleauction_cel_pendingReturns = _pendingReturns }))
= let simpleauction_cel_inst = get_contract c in
  let simpleauction_cel_inst = { simpleauction_cel_inst with simpleauction_cel_pendingReturns = _pendingReturns } in
  set_contract c simpleauction_cel_inst

let simpleauction_cel_set_ended (c:simpleauction_cel_address) (_ended:bool)
: StEth unit
  (fun st -> c `simpleauction_cel_live` st.current)
  (fun st0 _ st1 ->
    modifies_cmap_only (Set.singleton c) st0.current st1.current /\
    simpleauction_cel_live c st1.current /\
    (let instance0 = CM.sel c st0.current.cmap in
     let instance1 = CM.sel c st1.current.cmap in
    instance1 == { instance0 with simpleauction_cel_ended = _ended }))
= let simpleauction_cel_inst = get_contract c in
  let simpleauction_cel_inst = { simpleauction_cel_inst with simpleauction_cel_ended = _ended } in
  set_contract c simpleauction_cel_inst

let simpleauction_cel_set_totalReturns (c:simpleauction_cel_address) (_totalReturns:uint)
: StEth unit
  (fun st -> c `simpleauction_cel_live` st.current
              /\ _totalReturns >= 0 /\ _totalReturns <= uint_max)
  (fun st0 _ st1 ->
    modifies_cmap_only (Set.singleton c) st0.current st1.current /\
    simpleauction_cel_live c st1.current /\
    (let instance0 = CM.sel c st0.current.cmap in
     let instance1 = CM.sel c st1.current.cmap in
    instance1 == { instance0 with simpleauction_cel_totalReturns = _totalReturns }))
= let simpleauction_cel_inst = get_contract c in
  let simpleauction_cel_inst = { simpleauction_cel_inst with simpleauction_cel_totalReturns = _totalReturns } in
  set_contract c simpleauction_cel_inst

let inv1 (self:simpleauction_cel_address) (bst:bstate{self `simpleauction_cel_live` bst}) : Type0 =
  let simpleauction_cel_balance = pure_get_balance_bst self bst in
  let cs = CM.sel self bst.cmap in
    cs.simpleauction_cel_totalReturns == simpleauction_cel_balance

let inv (self:simpleauction_cel_address) (bst:bstate{self `simpleauction_cel_live` bst}) : Type0 =
  let simpleauction_cel_balance = pure_get_balance_bst self bst in
  let cs = CM.sel self bst.cmap in
    (~ (cs.simpleauction_cel_ended) ==> (simpleauction_cel_balance == (((sum_mapping cs.simpleauction_cel_pendingReturns)) + cs.simpleauction_cel_highestBid)))

let simpleauction_cel_constructor (self:simpleauction_cel_address) (sender:address) (value:uint) (tx:tx) (block:block) (_biddingTime:uint) (_beneficiary:address)
: Eth1 unit
  (fun bst -> 
    simpleauction_cel_live self bst /\
    (let b = pure_get_balance_bst self bst in
    let cs = CM.sel self bst.cmap in
      (sender <> null)
      /\ (cs.simpleauction_cel_beneficiary == null)
      /\ (cs.simpleauction_cel_auctionEndTime == 0)
      /\ (cs.simpleauction_cel_highestBidder == null)
      /\ (cs.simpleauction_cel_highestBid == 0)
      /\ (cs.simpleauction_cel_pendingReturns == M.const (0))
      /\ (cs.simpleauction_cel_ended == false)
      /\ (cs.simpleauction_cel_totalReturns == 0)
      /\ (b == 0)
    )
  )
  (fun bst ->
    ((block.timestamp + _biddingTime) > uint_max)
  )
  (fun bst0 x bst1 ->
    simpleauction_cel_live self bst1
    /\ (inv1 self bst1)
    /\ (inv self bst1)
  )
=
let cs = get_contract self in
let balance = get_balance self in
let _ = simpleauction_cel_set_beneficiary self _beneficiary in
let cs = get_contract self in
let x1 = ((if block.timestamp <= uint_max - _biddingTime then (block.timestamp + _biddingTime) else revert "Overflow error")) in
let _ = simpleauction_cel_set_auctionEndTime self x1 in
let cs = get_contract self in
()

let bidPost (old_highestBid:uint) (new_highestBid:uint) (old_highestBidder:address) (new_highestBidder:address) (_sender:address) (_value:uint) (old_pendingReturns:(m:(M.t address uint lt){M.def_of m == 0})) (new_pendingReturns:(m:(M.t address uint lt){M.def_of m == 0}))
= (((((M.sel old_pendingReturns old_highestBidder) + old_highestBid) <= uint_max) /\ (if (old_highestBid <> 0) then
  (M.equal new_pendingReturns (
            let x1 = (old_pendingReturns) in
            let x2 = (old_highestBidder) in
            let x3 = ((M.sel old_pendingReturns old_highestBidder) + old_highestBid) in
            let x1 = (M.upd x1 x2 x3) in
            x1))
else
 (M.equal new_pendingReturns old_pendingReturns)
)) /\ (new_highestBidder == _sender)) /\ (new_highestBid == _value)

let bid (self:simpleauction_cel_address) (sender:address{sender <> null}) (value:uint) (tx:tx) (block:block)
: Eth1 unit
  (fun bst ->
    simpleauction_cel_live self bst /\ (
    let cs = CM.sel self bst.cmap in
    let b = pure_get_balance_bst self bst in
    let l = bst.log in
      (inv1 self bst)
      /\ (inv self bst)
  ))
  (fun bst ->
    let cs = CM.sel self bst.cmap in
    let b = pure_get_balance_bst self bst in
    let l = bst.log in
    ((((block.timestamp > cs.simpleauction_cel_auctionEndTime) \/ (value <= cs.simpleauction_cel_highestBid)) \/ (((M.sel cs.simpleauction_cel_pendingReturns cs.simpleauction_cel_highestBidder) + cs.simpleauction_cel_highestBid) > uint_max)) \/ ((cs.simpleauction_cel_totalReturns + value) > uint_max))
  )
  (fun bst0 x bst1 ->
    simpleauction_cel_live self bst1 /\ (
    let cs0 = CM.sel self bst0.cmap in
    let cs1 = CM.sel self bst1.cmap in
    let b0 = pure_get_balance_bst self bst0 in
    let b1 = pure_get_balance_bst self bst1 in
    let l0 = bst0.log in
    let l1 = bst1.log in
    (inv1 self bst1)
      /\ (inv self bst1)
      /\ ((bidPost cs0.simpleauction_cel_highestBid cs1.simpleauction_cel_highestBid cs0.simpleauction_cel_highestBidder cs1.simpleauction_cel_highestBidder sender value cs0.simpleauction_cel_pendingReturns cs1.simpleauction_cel_pendingReturns))
      /\ (cs0.simpleauction_cel_ended == cs1.simpleauction_cel_ended)
      /\ (cs0.simpleauction_cel_auctionEndTime == cs1.simpleauction_cel_auctionEndTime)
      /\ (cs0.simpleauction_cel_beneficiary == cs1.simpleauction_cel_beneficiary)
  ))
=
let b = get_balance self in
let _ = set_balance self (
          if (b + value > uint_max) then (b + value - uint_max)
          else (b + value)) in
let cs = get_contract self in
let balance = get_balance self in
let _ = (if (block.timestamp > cs.simpleauction_cel_auctionEndTime) then begin
revert "Auction already ended.";
() end
else ()) in
let cs = get_contract self in
let balance = get_balance self in
let x1 = (value <= cs.simpleauction_cel_highestBid) in
let _ = (if x1 then begin
revert "There already is a higher bid.";
() end
else ()) in
let cs = get_contract self in
let balance = get_balance self in
let x1 = ((if cs.simpleauction_cel_totalReturns <= uint_max - value then (cs.simpleauction_cel_totalReturns + value) else revert "Overflow error")) in
let _ = simpleauction_cel_set_totalReturns self x1 in
let cs = get_contract self in
let _ = (if (cs.simpleauction_cel_highestBid <> 0) then begin
let x1 = ((if (M.sel cs.simpleauction_cel_pendingReturns cs.simpleauction_cel_highestBidder) <= uint_max - cs.simpleauction_cel_highestBid then ((M.sel cs.simpleauction_cel_pendingReturns cs.simpleauction_cel_highestBidder) + cs.simpleauction_cel_highestBid) else revert "Overflow error")) in
let x2 = (cs.simpleauction_cel_highestBidder) in
let pendingReturns = cs.simpleauction_cel_pendingReturns in
let _ = simpleauction_cel_set_pendingReturns self (M.upd pendingReturns x2 x1) in
let cs = get_contract self in
() end
else ()) in
let cs = get_contract self in
let balance = get_balance self in
let _ = simpleauction_cel_set_highestBidder self sender in
let cs = get_contract self in
let _ = simpleauction_cel_set_highestBid self value in
let cs = get_contract self in
let _ = emit simpleauction_cel_HighestBidIncreased (sender, value) in
let cs = get_contract self in
let balance = get_balance self in
()

let withdrawPost (_sender:address) (old_log:log) (new_log:log) (old_pendingReturns:(m:(M.t address uint lt){M.def_of m == 0})) (new_pendingReturns:(m:(M.t address uint lt){M.def_of m == 0})) (old_balance:uint) (new_balance:uint)
= if ((M.sel old_pendingReturns _sender) > 0) then
  ((new_log == ((mk_event _sender eTransfer (M.sel old_pendingReturns _sender))::old_log)) /\ (if (new_balance < old_balance) then
  (M.equal new_pendingReturns (
            let x1 = (old_pendingReturns) in
            let x2 = (_sender) in
            let x3 = (0) in
            let x1 = (M.upd x1 x2 x3) in
            x1))
else
 (M.equal new_pendingReturns old_pendingReturns)
))
else
 (M.equal new_pendingReturns old_pendingReturns)


let withdraw (self:simpleauction_cel_address) (sender:address{sender <> null}) (value:uint) (tx:tx) (block:block)
: Eth1 bool
  (fun bst ->
    simpleauction_cel_live self bst /\ (
    let cs = CM.sel self bst.cmap in
    let b = pure_get_balance_bst self bst in
    let l = bst.log in
      (inv1 self bst)
      /\ (inv self bst)
  ))
  (fun bst ->
    let cs = CM.sel self bst.cmap in
    let b = pure_get_balance_bst self bst in
    let l = bst.log in
    (b < (M.sel cs.simpleauction_cel_pendingReturns sender))
  )
  (fun bst0 x bst1 ->
    simpleauction_cel_live self bst1 /\ (
    let cs0 = CM.sel self bst0.cmap in
    let cs1 = CM.sel self bst1.cmap in
    let b0 = pure_get_balance_bst self bst0 in
    let b1 = pure_get_balance_bst self bst1 in
    let l0 = bst0.log in
    let l1 = bst1.log in
    (inv1 self bst1)
      /\ (inv self bst1)
      /\ ((withdrawPost sender l0 l1 cs0.simpleauction_cel_pendingReturns cs1.simpleauction_cel_pendingReturns b0 b1))
      /\ (b1 <= b0)
      /\ (cs0.simpleauction_cel_auctionEndTime == cs1.simpleauction_cel_auctionEndTime)
      /\ (cs0.simpleauction_cel_ended == cs1.simpleauction_cel_ended)
      /\ (cs0.simpleauction_cel_highestBidder == cs1.simpleauction_cel_highestBidder)
      /\ (cs0.simpleauction_cel_highestBid == cs1.simpleauction_cel_highestBid)
      /\ (cs0.simpleauction_cel_beneficiary == cs1.simpleauction_cel_beneficiary)
  ))
=
let cs = get_contract self in
let balance = get_balance self in
let bal:uint = (balance) in
let amount:uint = (M.sel cs.simpleauction_cel_pendingReturns sender) in
let _ = (if (amount > 0) then begin
let _ = send self sender amount in
let cs = get_contract self in
let balance = get_balance self in
let _ = (if (balance < bal) then begin
let pendingReturns = cs.simpleauction_cel_pendingReturns in
let _ = simpleauction_cel_set_pendingReturns self (M.upd pendingReturns sender 0) in
let cs = get_contract self in
let _ = simpleauction_cel_set_totalReturns self (_sub cs.simpleauction_cel_totalReturns amount) in
let cs = get_contract self in
() end
else ()) in
let cs = get_contract self in
let balance = get_balance self in
() end
else ()) in
let cs = get_contract self in
let balance = get_balance self in
true

let auctionEndPost (new_ended:bool) (old_log:log) (new_log:log) (old_beneficiary:address) (old_highestBid:uint) (old_highestBidder:address)
= new_ended /\ ((new_log == ((mk_event old_beneficiary eTransfer old_highestBid)::(mk_event null simpleauction_cel_AuctionEnded (old_highestBidder, old_highestBid))::old_log)))

let auctionEnd (self:simpleauction_cel_address) (sender:address{sender <> null}) (value:uint) (tx:tx) (block:block)
: Eth1 unit
  (fun bst ->
    simpleauction_cel_live self bst /\ (
    let cs = CM.sel self bst.cmap in
    let b = pure_get_balance_bst self bst in
    let l = bst.log in
      (inv1 self bst)
      /\ (inv self bst)
  ))
  (fun bst ->
    let cs = CM.sel self bst.cmap in
    let b = pure_get_balance_bst self bst in
    let l = bst.log in
    (((block.timestamp < cs.simpleauction_cel_auctionEndTime) \/ cs.simpleauction_cel_ended) \/ (b < cs.simpleauction_cel_highestBid))
  )
  (fun bst0 x bst1 ->
    simpleauction_cel_live self bst1 /\ (
    let cs0 = CM.sel self bst0.cmap in
    let cs1 = CM.sel self bst1.cmap in
    let b0 = pure_get_balance_bst self bst0 in
    let b1 = pure_get_balance_bst self bst1 in
    let l0 = bst0.log in
    let l1 = bst1.log in
    (inv1 self bst1)
      /\ (inv self bst1)
      /\ ((auctionEndPost cs1.simpleauction_cel_ended l0 l1 cs0.simpleauction_cel_beneficiary cs0.simpleauction_cel_highestBid cs0.simpleauction_cel_highestBidder))
      /\ (b1 <= b0)
      /\ (cs0.simpleauction_cel_auctionEndTime == cs1.simpleauction_cel_auctionEndTime)
      /\ (cs0.simpleauction_cel_highestBidder == cs1.simpleauction_cel_highestBidder)
      /\ (cs0.simpleauction_cel_highestBid == cs1.simpleauction_cel_highestBid)
      /\ (cs0.simpleauction_cel_pendingReturns == cs1.simpleauction_cel_pendingReturns)
      /\ (cs0.simpleauction_cel_beneficiary == cs1.simpleauction_cel_beneficiary)
  ))
=
let cs = get_contract self in
let balance = get_balance self in
let _ = (if (block.timestamp < cs.simpleauction_cel_auctionEndTime) then begin
revert "Auction not yet ended.";
() end
else ()) in
let cs = get_contract self in
let balance = get_balance self in
let _ = (if (cs.simpleauction_cel_ended) then begin
revert "auctionEnd has already been called.";
() end
else ()) in
let cs = get_contract self in
let balance = get_balance self in
let _ = simpleauction_cel_set_ended self true in
let cs = get_contract self in
let _ = emit simpleauction_cel_AuctionEnded (cs.simpleauction_cel_highestBidder, cs.simpleauction_cel_highestBid) in
let cs = get_contract self in
let balance = get_balance self in
let bal:uint = (balance) in
let x1 = (cs.simpleauction_cel_beneficiary) in
let x2 = (cs.simpleauction_cel_highestBid) in
let _ = send self x1 x2 in
let cs = get_contract self in
let balance = get_balance self in
let _ = (if (balance < bal) then begin
let _ = simpleauction_cel_set_totalReturns self (_sub cs.simpleauction_cel_totalReturns cs.simpleauction_cel_highestBid) in
let cs = get_contract self in
() end
else ()) in
let cs = get_contract self in
let balance = get_balance self in
()