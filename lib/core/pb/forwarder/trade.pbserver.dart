//
//  Generated code. Do not modify.
//  source: forwarder/trade.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/empty.pb.dart' as $1;
import 'trade.pb.dart' as $7;
import 'trade.pbjson.dart';

export 'trade.pb.dart';

abstract class TradeInterfaceServiceBase extends $pb.GeneratedService {
  $async.Future<$7.TradeResult> cancelOrder($pb.ServerContext ctx, $7.OrderID request);
  $async.Future<$7.TradeResult> buyStock($pb.ServerContext ctx, $7.StockOrderDetail request);
  $async.Future<$7.TradeResult> sellStock($pb.ServerContext ctx, $7.StockOrderDetail request);
  $async.Future<$7.TradeResult> buyOddStock($pb.ServerContext ctx, $7.OddStockOrderDetail request);
  $async.Future<$7.TradeResult> sellOddStock($pb.ServerContext ctx, $7.OddStockOrderDetail request);
  $async.Future<$7.TradeResult> sellFirstStock($pb.ServerContext ctx, $7.StockOrderDetail request);
  $async.Future<$7.TradeResult> buyFuture($pb.ServerContext ctx, $7.FutureOrderDetail request);
  $async.Future<$7.TradeResult> sellFuture($pb.ServerContext ctx, $7.FutureOrderDetail request);
  $async.Future<$7.TradeResult> sellFirstFuture($pb.ServerContext ctx, $7.FutureOrderDetail request);
  $async.Future<$7.TradeResult> buyOption($pb.ServerContext ctx, $7.OptionOrderDetail request);
  $async.Future<$7.TradeResult> sellOption($pb.ServerContext ctx, $7.OptionOrderDetail request);
  $async.Future<$7.TradeResult> sellFirstOption($pb.ServerContext ctx, $7.OptionOrderDetail request);
  $async.Future<$1.Empty> getLocalOrderStatusArr($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$1.Empty> getSimulateOrderStatusArr($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$7.FuturePositionArr> getFuturePosition($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$7.StockPositionArr> getStockPosition($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$7.SettlementList> getSettlement($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$7.AccountBalance> getAccountBalance($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$7.Margin> getMargin($pb.ServerContext ctx, $1.Empty request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CancelOrder': return $7.OrderID();
      case 'BuyStock': return $7.StockOrderDetail();
      case 'SellStock': return $7.StockOrderDetail();
      case 'BuyOddStock': return $7.OddStockOrderDetail();
      case 'SellOddStock': return $7.OddStockOrderDetail();
      case 'SellFirstStock': return $7.StockOrderDetail();
      case 'BuyFuture': return $7.FutureOrderDetail();
      case 'SellFuture': return $7.FutureOrderDetail();
      case 'SellFirstFuture': return $7.FutureOrderDetail();
      case 'BuyOption': return $7.OptionOrderDetail();
      case 'SellOption': return $7.OptionOrderDetail();
      case 'SellFirstOption': return $7.OptionOrderDetail();
      case 'GetLocalOrderStatusArr': return $1.Empty();
      case 'GetSimulateOrderStatusArr': return $1.Empty();
      case 'GetFuturePosition': return $1.Empty();
      case 'GetStockPosition': return $1.Empty();
      case 'GetSettlement': return $1.Empty();
      case 'GetAccountBalance': return $1.Empty();
      case 'GetMargin': return $1.Empty();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CancelOrder': return this.cancelOrder(ctx, request as $7.OrderID);
      case 'BuyStock': return this.buyStock(ctx, request as $7.StockOrderDetail);
      case 'SellStock': return this.sellStock(ctx, request as $7.StockOrderDetail);
      case 'BuyOddStock': return this.buyOddStock(ctx, request as $7.OddStockOrderDetail);
      case 'SellOddStock': return this.sellOddStock(ctx, request as $7.OddStockOrderDetail);
      case 'SellFirstStock': return this.sellFirstStock(ctx, request as $7.StockOrderDetail);
      case 'BuyFuture': return this.buyFuture(ctx, request as $7.FutureOrderDetail);
      case 'SellFuture': return this.sellFuture(ctx, request as $7.FutureOrderDetail);
      case 'SellFirstFuture': return this.sellFirstFuture(ctx, request as $7.FutureOrderDetail);
      case 'BuyOption': return this.buyOption(ctx, request as $7.OptionOrderDetail);
      case 'SellOption': return this.sellOption(ctx, request as $7.OptionOrderDetail);
      case 'SellFirstOption': return this.sellFirstOption(ctx, request as $7.OptionOrderDetail);
      case 'GetLocalOrderStatusArr': return this.getLocalOrderStatusArr(ctx, request as $1.Empty);
      case 'GetSimulateOrderStatusArr': return this.getSimulateOrderStatusArr(ctx, request as $1.Empty);
      case 'GetFuturePosition': return this.getFuturePosition(ctx, request as $1.Empty);
      case 'GetStockPosition': return this.getStockPosition(ctx, request as $1.Empty);
      case 'GetSettlement': return this.getSettlement(ctx, request as $1.Empty);
      case 'GetAccountBalance': return this.getAccountBalance(ctx, request as $1.Empty);
      case 'GetMargin': return this.getMargin(ctx, request as $1.Empty);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => TradeInterfaceServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => TradeInterfaceServiceBase$messageJson;
}

