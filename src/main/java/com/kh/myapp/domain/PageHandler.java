package com.kh.myapp.domain;

import com.kh.myapp.domain.SearchCondition;

public class PageHandler {
//  private int page;
//  private int pageSize;
//  private String option;
//  private String keyword;
  private SearchCondition sc;
  private int totalCnt;
  private int naviSize = 10;
  private int totalPage;
  private int beginPage;
  private int endPage;
  private boolean showPrev;
  private boolean showNext;

  public  PageHandler(int totalCnt, SearchCondition sc){
      this.totalCnt = totalCnt;
      this.sc = sc;

      doPaging(totalCnt, sc);
  }

  public void doPaging(int totalCnt, SearchCondition sc){
      this.totalCnt = totalCnt;

      totalPage = (int)Math.ceil(totalCnt / (double)sc.getPageSize());
      beginPage = (sc.getPage()-1) / naviSize * naviSize + 1;
      endPage = Math.min(beginPage + naviSize - 1, totalPage);
      showPrev = beginPage != 1;
      showNext = endPage != totalPage;
  }

  public SearchCondition getSc() {
      return sc;
  }

  public void setSc(SearchCondition sc) {
      this.sc = sc;
  }

  public int getTotalCnt() {
      return totalCnt;
  }

  public void setTotalCnt(int totalCnt) {
      this.totalCnt = totalCnt;
  }

//  public int getPageSize() {
//      return pageSize;
//  }
//
//  public void setPageSize(int pageSize) {
//      this.pageSize = pageSize;
//  }

  public int getNaviSize() {
      return naviSize;
  }

  public void setNaviSize(int naviSize) {
      this.naviSize = naviSize;
  }

  public int getTotalPage() {
      return totalPage;
  }

  public void setTotalPage(int totalPage) {
      this.totalPage = totalPage;
  }

//  public int getPage() {
//      return page;
//  }
//
//  public void setPage(int page) {
//      this.page = page;
//  }

  public int getBeginPage() {
      return beginPage;
  }

  public void setBeginPage(int beginPage) {
      this.beginPage = beginPage;
  }

  public int getEndPage() {
      return endPage;
  }

  public void setEndPage(int endPage) {
      this.endPage = endPage;
  }

  public boolean isShowPrev() {
      return showPrev;
  }

  public void setShowPrev(boolean showPrev) {
      this.showPrev = showPrev;
  }

  public boolean isShowNext() {
      return showNext;
  }

  public void setShowNext(boolean showNext) {
      this.showNext = showNext;
  }

  void print(){
      System.out.println("page = " + sc.getPage());
      System.out.print(showPrev ? "[PREV] " : "");
      for (int i=beginPage; i<=endPage; i++){
          System.out.print(i + " ");
      }
      System.out.println(showNext ? " [NEXT] " : "");
  }

  @Override
  public String toString() {
      return "PageHandler{" +
              "sc=" + sc +
              ", totalCnt=" + totalCnt +
              ", naviSize=" + naviSize +
              ", totalPage=" + totalPage +
              ", beginPage=" + beginPage +
              ", endPage=" + endPage +
              ", showPrev=" + showPrev +
              ", showNext=" + showNext +
              '}';
  }
}