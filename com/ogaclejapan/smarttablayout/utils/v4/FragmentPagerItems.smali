.class public Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;
.super Lcom/ogaclejapan/smarttablayout/utils/PagerItems;
.source "FragmentPagerItems.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ogaclejapan/smarttablayout/utils/PagerItems",
        "<",
        "Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/ogaclejapan/smarttablayout/utils/PagerItems;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    invoke-direct {v0, p0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
