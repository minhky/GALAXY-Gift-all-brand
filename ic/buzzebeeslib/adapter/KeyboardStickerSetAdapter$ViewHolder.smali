.class public Lic/buzzebeeslib/adapter/KeyboardStickerSetAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "KeyboardStickerSetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/adapter/KeyboardStickerSetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public imgStickerSet:Landroid/widget/ImageView;

.field public progressBarLoading:Landroid/widget/ProgressBar;

.field public tvStickerSetName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
