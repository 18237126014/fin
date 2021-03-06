@extends('home.public.base')
@section('title', '投资者教育-详情')
@section('my-css')
<link rel="stylesheet" href="{{url('/css/home/jquery.css')}}">
<link rel="stylesheet" type="text/css" href="{{url('/css/home/share.css')}}">
@endsection
@section('my-js')
<script src="{{url('/js/home/common.js')}}"></script>
<script src="{{url('/js/home/index.js')}}"></script>
<script type="text/javascript" src="{{url('plugin/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js')}}"></script>
<script type="text/javascript" src="{{url('plugin/mCustomScrollbar/mCustomScrollbar.js')}}"></script>
<script src="{{url('/plugin/scrollReveal/scrollReveal.min.js')}}"></script>
<style>
    .edu_div {
    width: 100%;
    clear: both;
    background: #F1F2F4;
    position: relative;
        }
</style>
@endsection
@section('content')
    <!-- <div class="main_investorEdu"  data-scroll-reveal="enter left over 0.5s after 0.5s"> -->
    <div class="edu_div"  data-scroll-reveal="enter left over 0.5s after 0.5s">
        <div class="investorEdu_content">
        <div class="investorEdu_header">
            <a href="javascript:history.go(-1)">
                <p>{{$title}}</p>
            </a>
        </div>
            <div class="investorEdu_center">
                <div class="rules">    
                    {!! $res !!}
                </div>
            </div>              
        </div>
    </div>
@endsection
