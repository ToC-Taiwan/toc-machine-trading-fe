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

import '../google/protobuf/empty.pb.dart' as $0;
import 'entity.pb.dart' as $3;
import 'trade.pb.dart' as $6;
import 'trade.pbjson.dart';

export 'trade.pb.dart';

abstract class TradeInterfaceServiceBase extends $pb.GeneratedService {
  $async.Future<$6.TradeResult> buyStock($pb.ServerContext ctx, $6.StockOrderDetail request);
  $async.Future<$6.TradeResult> sellStock($pb.ServerContext ctx, $6.StockOrderDetail request);
  $async.Future<$6.TradeResult> buyOddStock($pb.ServerContext ctx, $6.OddStockOrderDetail request);
  $async.Future<$6.TradeResult> sellOddStock($pb.ServerContext ctx, $6.OddStockOrderDetail request);
  $async.Future<$6.TradeResult> sellFirstStock($pb.ServerContext ctx, $6.StockOrderDetail request);
  $async.Future<$6.TradeResult> cancelStock($pb.ServerContext ctx, $6.OrderID request);
  $async.Future<$6.TradeResult> buyFuture($pb.ServerContext ctx, $6.FutureOrderDetail request);
  $async.Future<$6.TradeResult> sellFuture($pb.ServerContext ctx, $6.FutureOrderDetail request);
  $async.Future<$6.TradeResult> sellFirstFuture($pb.ServerContext ctx, $6.FutureOrderDetail request);
  $async.Future<$6.TradeResult> cancelFuture($pb.ServerContext ctx, $6.FutureOrderID request);
  $async.Future<$6.TradeResult> buyOption($pb.ServerContext ctx, $6.OptionOrderDetail request);
  $async.Future<$6.TradeResult> sellOption($pb.ServerContext ctx, $6.OptionOrderDetail request);
  $async.Future<$6.TradeResult> sellFirstOption($pb.ServerContext ctx, $6.OptionOrderDetail request);
  $async.Future<$6.TradeResult> cancelOption($pb.ServerContext ctx, $6.OptionOrderID request);
  $async.Future<$0.Empty> getLocalOrderStatusArr($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$0.Empty> getSimulateOrderStatusArr($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$6.TradeResult> getOrderStatusByID($pb.ServerContext ctx, $6.OrderID request);
  $async.Future<$3.ErrorMessage> getNonBlockOrderStatusArr($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$6.FuturePositionArr> getFuturePosition($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$6.StockPositionArr> getStockPosition($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$6.SettlementList> getSettlement($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$6.AccountBalance> getAccountBalance($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$6.Margin> getMargin($pb.ServerContext ctx, $0.Empty request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'BuyStock': return $6.StockOrderDetail();
      case 'SellStock': return $6.StockOrderDetail();
      case 'BuyOddStock': return $6.OddStockOrderDetail();
      case 'SellOddStock': return $6.OddStockOrderDetail();
      case 'SellFirstStock': return $6.StockOrderDetail();
      case 'CancelStock': return $6.OrderID();
      case 'BuyFuture': return $6.FutureOrderDetail();
      case 'SellFuture': return $6.FutureOrderDetail();
      case 'SellFirstFuture': return $6.FutureOrderDetail();
      case 'CancelFuture': return $6.FutureOrderID();
      case 'BuyOption': return $6.OptionOrderDetail();
      case 'SellOption': return $6.OptionOrderDetail();
      case 'SellFirstOption': return $6.OptionOrderDetail();
      case 'CancelOption': return $6.OptionOrderID();
      case 'GetLocalOrderStatusArr': return $0.Empty();
      case 'GetSimulateOrderStatusArr': return $0.Empty();
      case 'GetOrderStatusByID': return $6.OrderID();
      case 'GetNonBlockOrderStatusArr': return $0.Empty();
      case 'GetFuturePosition': return $0.Empty();
      case 'GetStockPosition': return $0.Empty();
      case 'GetSettlement': return $0.Empty();
      case 'GetAccountBalance': return $0.Empty();
      case 'GetMargin': return $0.Empty();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'BuyStock': return this.buyStock(ctx, request as $6.StockOrderDetail);
      case 'SellStock': return this.sellStock(ctx, request as $6.StockOrderDetail);
      case 'BuyOddStock': return this.buyOddStock(ctx, request as $6.OddStockOrderDetail);
      case 'SellOddStock': return this.sellOddStock(ctx, request as $6.OddStockOrderDetail);
      case 'SellFirstStock': return this.sellFirstStock(ctx, request as $6.StockOrderDetail);
      case 'CancelStock': return this.cancelStock(ctx, request as $6.OrderID);
      case 'BuyFuture': return this.buyFuture(ctx, request as $6.FutureOrderDetail);
      case 'SellFuture': return this.sellFuture(ctx, request as $6.FutureOrderDetail);
      case 'SellFirstFuture': return this.sellFirstFuture(ctx, request as $6.FutureOrderDetail);
      case 'CancelFuture': return this.cancelFuture(ctx, request as $6.FutureOrderID);
      case 'BuyOption': return this.buyOption(ctx, request as $6.OptionOrderDetail);
      case 'SellOption': return this.sellOption(ctx, request as $6.OptionOrderDetail);
      case 'SellFirstOption': return this.sellFirstOption(ctx, request as $6.OptionOrderDetail);
      case 'CancelOption': return this.cancelOption(ctx, request as $6.OptionOrderID);
      case 'GetLocalOrderStatusArr': return this.getLocalOrderStatusArr(ctx, request as $0.Empty);
      case 'GetSimulateOrderStatusArr': return this.getSimulateOrderStatusArr(ctx, request as $0.Empty);
      case 'GetOrderStatusByID': return this.getOrderStatusByID(ctx, request as $6.OrderID);
      case 'GetNonBlockOrderStatusArr': return this.getNonBlockOrderStatusArr(ctx, request as $0.Empty);
      case 'GetFuturePosition': return this.getFuturePosition(ctx, request as $0.Empty);
      case 'GetStockPosition': return this.getStockPosition(ctx, request as $0.Empty);
      case 'GetSettlement': return this.getSettlement(ctx, request as $0.Empty);
      case 'GetAccountBalance': return this.getAccountBalance(ctx, request as $0.Empty);
      case 'GetMargin': return this.getMargin(ctx, request as $0.Empty);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => TradeInterfaceServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => TradeInterfaceServiceBase$messageJson;
}

